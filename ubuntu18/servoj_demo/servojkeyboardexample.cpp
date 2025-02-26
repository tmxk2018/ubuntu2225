#include "servojkeyboardexample.h"

#include <linux/input.h>
#include <sys/stat.h>
#include <sys/ioctl.h>

#include <iostream>
#include <unistd.h>
#include <thread>
#include <cmath>
#include <cstring>
#include <dirent.h>
#include <fcntl.h>
#include <termios.h>
#include <iomanip>

// 机械臂IP地址
#define IP "127.0.0.1"
//#define IP "192.168.1.10"

#define ROBOT_LINE_VELC 0.005 //m/s
#define ROBOT_RPY_VELC 0.05 //rad/s
#define ROBOT_VELC_INCREMENT_RATIO 0.1

#define MAX_DELAY_TIME 0.05 //s
#define SEND_CYCLE 0.009 //s
#define PLAN_CYCLE 0.01 //s

ServojKeyBoardExample::ServojKeyBoardExample()
{
    struct termios attr;
    tcgetattr(0, &attr);
    attr.c_lflag &= ~ECHO;
    tcsetattr(0, TCSANOW, &attr);
}

int ServojKeyBoardExample::KeyBoardDemo()
{
    std::cout << "按下 Enter 开始初始化机器人：" << std::endl;
    getchar();

    if (false == startupRobot())
        return -1;

    std::cout << "按下 Enter 开始轴动到指定位姿：" << std::endl;
    getchar();

    double target[6] = {-0.000003, -0.127267, -1.321122, 0.376934, -1.570796, -0.000008};
    if (false == moveJoint(target))
        return -2;

    std::cout << "按下 Enter 开始监听键盘时间并开始Srevoj运动：" << std::endl;
    getchar();

    //获取键盘事件地址，并开始监听键盘按压事件。
    char *device_name = getKeyboardDeviceName();
    if(device_name == NULL) {
        return -3;
    }
    keyboard_event_path_ = device_name;
    std::thread th(&ServojKeyBoardExample::listenKeyboardEventThread, this);

    /////////////////////   login Servoj   ////////////////////////
    if(0 == client_.login(IP, 6000, "test", "1234")) {
        std::cout << "login succ" << std::endl;
    } else {
        std::cerr << "login fail" << std::endl;
        return false;
    }

    /////////////////////   Servoj(进入Servoj模式；逆解关节角，并下发关节角)   ////////////////////////
    runTrajectoryByKeyborad();

    /////////////////////   stop Servoj   ////////////////////////

    if(0 == client_.stopServoj()) {
        std::cout << "stopServoj succ" << std::endl;
    } else {
        std::cerr << "stopServoj fail" << std::endl;
        return -4;
    }

    /////////////////////  Servoj logout   ////////////////////////

    if(0 == client_.logout()) {
        std::cout << "logout succ" << std::endl;
    } else {
        std::cerr << "logout fail" << std::endl;
        return -4;
    }

    std::cout << "Servoj 已退出" << std::endl;

    th.join();

    uninitialize();

    return 0;
}

bool ServojKeyBoardExample::startupRobot()
{
    if (robot_.robotServiceLogin(IP, 8899, "SERVOJ_DEMO", "SERVOJ_DEMO") != aubo_robot_namespace::ErrnoSucc) {
        std::cout << "登录失败" << std::endl;
        return false;
    }
    std::cout << "登录成功" << std::endl;
    //如果有真实机，才startup
    aubo_robot_namespace::RobotWorkMode mode;
    if (aubo_robot_namespace::ErrnoSucc != robot_.robotServiceGetRobotWorkMode(mode)) {
        std::cout << "get robot work mode failed";
        return false;
    }
    if (mode == aubo_robot_namespace::RobotModeReal) {

        std::cout << "real robot" << std::endl;
        bool result = false;
        //工具的动力学参数和运动学参数
        aubo_robot_namespace::ToolDynamicsParam tool_dynamics = { 0 };
        //机械臂碰撞等级
        uint8 colli_class = 6;
        //机械臂启动是否读取姿态（默认开启）
        bool read_pos = true;
        //机械臂静态碰撞检测（默认开启）
        bool static_colli_detect = true;
        //机械臂最大加速度
        int board_maxacc = 6000;
        //机械臂服务启动状态
        aubo_robot_namespace::ROBOT_SERVICE_STATE state = aubo_robot_namespace::ROBOT_SERVICE_READY;

        if (robot_.rootServiceRobotStartup(tool_dynamics, colli_class, read_pos, static_colli_detect, board_maxacc, state)
            == aubo_robot_namespace::ErrnoSucc)
        {
            result = true;
            std::cout << "call robot startup succ, robot state:" << state << std::endl;
        }
        else
        {
            std::cerr << "robot startup failed" << std::endl;
            return false;
        }
    }
    else {
        std::cout << "simulate robot" << std::endl;
    }

    return true;
}

bool ServojKeyBoardExample::moveJoint(double target_joint_pos[])
{
    if (robot_.robotServiceInitGlobalMoveProfile() != aubo_robot_namespace::ErrnoSucc) {
        return false;
    }
    aubo_robot_namespace::JointVelcAccParam maxacc;
    aubo_robot_namespace::JointVelcAccParam maxvelc;
    for (int i = 0; i < 6; i++) {
        maxacc.jointPara[i] = 1;
        maxvelc.jointPara[i] = 0.3;
    }
    if (robot_.robotServiceSetGlobalMoveJointMaxAcc(maxacc) != aubo_robot_namespace::ErrnoSucc) {
        return false;
    }
    if (robot_.robotServiceSetGlobalMoveJointMaxVelc(maxvelc) != aubo_robot_namespace::ErrnoSucc) {
        return false;
    }

    if (robot_.robotServiceJointMove(target_joint_pos, true) != aubo_robot_namespace::ErrnoSucc) {
        std::cerr << "move to target pos failed ! " << std::endl;
        return false;
    }

    return true;
}

bool ServojKeyBoardExample::uninitialize()
{
    robot_.robotServiceLogout();

    return true;
}

double ServojKeyBoardExample::calculateRobotOffsetStep(const double target_offset_step, const double current_offset_step, const double velc)
{
    if(std::abs(target_offset_step) > std::abs(current_offset_step)) {
        return (target_offset_step > 0 ?
                    (std::min(target_offset_step, current_offset_step + target_offset_step * ROBOT_VELC_INCREMENT_RATIO)) :
                    (std::max(target_offset_step, current_offset_step + target_offset_step * ROBOT_VELC_INCREMENT_RATIO)));
    } else {
        return (current_offset_step > 0 ?
                    (std::max(target_offset_step, current_offset_step - velc * ROBOT_VELC_INCREMENT_RATIO)) :
                    (std::min(target_offset_step, current_offset_step + velc * ROBOT_VELC_INCREMENT_RATIO)));
    }
}

void ServojKeyBoardExample::runTrajectoryByKeyborad()
{

    std::cout << "Enter runTrajectoryByKeyborad thread !" << std::endl;

    aubo_robot_namespace::wayPoint_S current_waypoint;
    aubo_robot_namespace::wayPoint_S out_waypoint;

    double joint_reference[aubo_robot_namespace::ARM_DOF];

    aubo_robot_namespace::Pos target_pos_offset_step;    //目标单个周期的偏移步长
    aubo_robot_namespace::Rpy target_rpy_offset_step;    //目标单个周期的偏转步长
    aubo_robot_namespace::Pos pos_current_offset_step;   //当前执行的偏移步长
    aubo_robot_namespace::Rpy rpy_current_offset_step;   //当前执行的偏转步长

    aubo_robot_namespace::Pos target_pos;    //目标位置
    aubo_robot_namespace::Rpy target_rpy;    //目标姿态
    aubo_robot_namespace::Ori target_ori;   //目标姿态四元素

    // 0.1 获取当前路点
    int ret = robot_.robotServiceGetCurrentWaypointInfo(current_waypoint);
    if(ret != 0) {
        std::cerr << "get waypoint error!" << std::endl;
        return;
    }

    std::cout << "current waypoint : " << current_waypoint.jointpos[0] << ", " << current_waypoint.jointpos[1] << ", " << current_waypoint.jointpos[2] << ", " <<
                    current_waypoint.jointpos[3] << ", " << current_waypoint.jointpos[4] << ", " << current_waypoint.jointpos[5] << std::endl;

    // 0.3 判断当前是否处于零位位姿
    if(abs(current_waypoint.jointpos[0]) < 1e-6
            && abs(current_waypoint.jointpos[1]) < 1e-6
            && abs(current_waypoint.jointpos[2]) < 1e-6
            && abs(current_waypoint.jointpos[3]) < 1e-6
            && abs(current_waypoint.jointpos[4]) < 1e-6
            && abs(current_waypoint.jointpos[5]) < 1e-6) {

        std::cout << "关节处于零位位姿！" << std::endl;
        return;
    }

    // 0.4 拷贝当前用作首次逆解参考位姿，拷贝当前路点用于偏移使用，拷贝当前路点位姿以固定位姿。
    memcpy(joint_reference, current_waypoint.jointpos,sizeof(joint_reference));
    out_waypoint = current_waypoint;

    // 0.5 将四元素转为欧拉角
    robot_.quaternionToRPY(out_waypoint.orientation, target_rpy);

    /////////////////////   start Servoj   ////////////////////////
    if(0 == client_.startServoj()) {
        std::cout << "startServoj succ" << std::endl;
    } else {
        std::cerr << "startServoj fail" << std::endl;
        return;
    }

    while(!quit_keyboard_offset_thread_) {

        // 0.0 打印键盘方向提示
        std::cout << "(Q)Z+     (W)X+    (E)Z-\t\t" << "(U)RZ+   (I)RX+    (O)RY+ \n";
        std::cout << "(A)Y-     (S)X+    (D)Y+\t\t" << "(J)RZ+   (K)RX+    (L)RY+ \n";

        // 1.0 获取目标偏移及偏转速度
        target_pos_offset_step.x =  ROBOT_LINE_VELC * pose_direction_[0];
        target_pos_offset_step.y = ROBOT_LINE_VELC * pose_direction_[1];
        target_pos_offset_step.z = ROBOT_LINE_VELC * pose_direction_[2];
        target_rpy_offset_step.rx = ROBOT_RPY_VELC * pose_direction_[3];
        target_rpy_offset_step.ry = ROBOT_RPY_VELC * pose_direction_[4];
        target_rpy_offset_step.rz = ROBOT_RPY_VELC * pose_direction_[5];

        // 1.1 计算当前执行偏移及偏转速度，避免加速度过快。
        pos_current_offset_step.x = calculateRobotOffsetStep(
                    target_pos_offset_step.x * PLAN_CYCLE, pos_current_offset_step.x, ROBOT_LINE_VELC * PLAN_CYCLE);
        pos_current_offset_step.y = calculateRobotOffsetStep(
                    target_pos_offset_step.y * PLAN_CYCLE, pos_current_offset_step.y, ROBOT_LINE_VELC * PLAN_CYCLE);
        pos_current_offset_step.z = calculateRobotOffsetStep(
                    target_pos_offset_step.z * PLAN_CYCLE, pos_current_offset_step.z, ROBOT_LINE_VELC * PLAN_CYCLE);
        rpy_current_offset_step.rx = calculateRobotOffsetStep(
                    target_rpy_offset_step.rx * PLAN_CYCLE, rpy_current_offset_step.rx, ROBOT_RPY_VELC * PLAN_CYCLE);
        rpy_current_offset_step.ry = calculateRobotOffsetStep(
                    target_rpy_offset_step.ry * PLAN_CYCLE, rpy_current_offset_step.ry, ROBOT_RPY_VELC * PLAN_CYCLE);
        rpy_current_offset_step.rz = calculateRobotOffsetStep(
                    target_rpy_offset_step.rz * PLAN_CYCLE, rpy_current_offset_step.rz, ROBOT_RPY_VELC * PLAN_CYCLE);

        std::cout << "Control offset : \n" <<
                 " x: "<< pos_current_offset_step.x << std::fixed << std::setprecision(6) <<
                 " y: "<< pos_current_offset_step.y << std::fixed << std::setprecision(6) <<
                 " z: "<< pos_current_offset_step.z << std::fixed << std::setprecision(6) << "\n" <<
                 "rx: "<< rpy_current_offset_step.rx << std::fixed << std::setprecision(6) <<
                 " ry: "<< rpy_current_offset_step.ry << std::fixed << std::setprecision(6) <<
                 " rz: "<< rpy_current_offset_step.rz << std::fixed << std::setprecision(6) << "\n";

        // 1.2  计算当前目标位姿
        target_pos.x = out_waypoint.cartPos.position.x + pos_current_offset_step.x;
        target_pos.y = out_waypoint.cartPos.position.y + pos_current_offset_step.y;
        target_pos.z = out_waypoint.cartPos.position.z + pos_current_offset_step.z;

        target_rpy.rx = target_rpy.rx + rpy_current_offset_step.rx;
        target_rpy.ry = target_rpy.ry + rpy_current_offset_step.ry;
        target_rpy.rz = target_rpy.rz + rpy_current_offset_step.rz;

        // 1.3 欧拉角转四元素
        robot_.RPYToQuaternion(target_rpy, target_ori);

        // 2.1 逆解
        ret = robot_.robotServiceRobotIk(joint_reference, target_pos, target_ori, out_waypoint);
        if(ret != 0) {
            std::cerr << "robotServiceRobotIk Error code : " << ret << std::endl;
            return;
        }

        // 2.2 拷贝输出关节角为下一逆解参考值
        memcpy(joint_reference,out_waypoint.jointpos,sizeof(joint_reference));

        // 3.1 Servoj下发关节角
        double total_delay_time = 0.0;
        auto retval = client_.servoj(out_waypoint.jointpos, max_joint_velc_, max_joint_acc_, PLAN_CYCLE, 1, 0.5, total_delay_time, false);
        if(retval != 0) {
            std::cerr << "servoj_servoj fail error : " << retval << std::endl;
            return;
        }

        // 3.2 根据返回的剩余路径总时长，计算发送休眠时间
        std::cout << "Robot current delay time : " << total_delay_time << " s" << std::endl;
        if(total_delay_time > MAX_DELAY_TIME) {
            std::this_thread::sleep_for(std::chrono::milliseconds((int)((total_delay_time - MAX_DELAY_TIME) * 1000.0)));
        } else {
            std::this_thread::sleep_for(std::chrono::milliseconds((int)(SEND_CYCLE * 1000.0)));
        }
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    return;
}

char *ServojKeyBoardExample::getKeyboardDeviceName()
{
    DIR *dir = opendir("/dev/input");
    if (!dir) {
      return NULL;
    }

    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
      // 判断文件名是否以event开头
      if (strncmp(entry->d_name, "event", 5) == 0) {
        // 获取文件名
        char *device_name = strdup("/dev/input/");
        strcat(device_name, entry->d_name);
        int fd = open(device_name, O_RDONLY);

        //通过Name辨别
        char name[256];
        if(ioctl(fd, EVIOCGNAME(sizeof(name)), name) < 0) {
            char *error_message = strerror(errno);
            printf("ioctl failed: %s\n", error_message);
        } else {
//            printf("Device name: %s\n", name);
            if(strstr(name, "keyboard") != NULL) {
                closedir(dir);
                return device_name;
            }
        }
      }
    }

    // 关闭目录
    closedir(dir);

    // 文件名不存在
    return NULL;
}

void ServojKeyBoardExample::listenKeyboardEventThread()
{
    int fd = open(keyboard_event_path_, O_RDONLY);
    if (fd == -1) {
        std::cerr << "Failed to open keyboard device" << std::endl;
        return;
    }

    struct input_event ev;
    while (!quit_keyboard_offset_thread_) {
        ssize_t n = read(fd, &ev, sizeof(struct input_event));
        if (n == sizeof(struct input_event)) {
            if (ev.type == EV_KEY ) {
                switch (ev.code) {
                case KEY_W:
                    //X+
                    if(pose_direction_[0] != ev.value && pose_direction_[0] != -1 && ev.value != 2) {
                        pose_direction_[0] =  ev.value;
//                        std::cout << "Key W: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_S:
                    //X-
                    if(pose_direction_[0] != ev.value && pose_direction_[0] != 1 && ev.value != 2) {
                        pose_direction_[0] =  -ev.value;
//                        std::cout << "Key S: -"<< ev.value<< std::endl;
                    }
                    break;
                case KEY_A:
                    //Y+
                    if(pose_direction_[1] != ev.value && pose_direction_[1] != -1 && ev.value != 2) {
                        pose_direction_[1] =  ev.value;
//                        std::cout << "Key A: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_D:
                    //Y-
                    if(pose_direction_[1] != ev.value && pose_direction_[1] != 1 && ev.value != 2) {
                        pose_direction_[1] =  -ev.value;
//                        std::cout << "Key D: -"<< ev.value << std::endl;
                    }
                    break;
                case KEY_Q:
                    //Z+
                    if(pose_direction_[2] != ev.value && pose_direction_[2] != -1 && ev.value != 2) {
                        pose_direction_[2] =  ev.value;
//                        std::cout << "Key Q: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_E:
                    //Z-
                    if(pose_direction_[2] != ev.value && pose_direction_[2] != 1 && ev.value != 2) {
                        pose_direction_[2] =  -ev.value;
//                        std::cout << "Key E: -"<< ev.value << std::endl;
                    }
                    break;
                case KEY_I:
                    //RX+
                    if(pose_direction_[3] != ev.value && pose_direction_[3] != -1 && ev.value != 2) {
                        pose_direction_[3] =  ev.value;
//                        std::cout << "Key I: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_K:
                    //RX-
                    if(pose_direction_[3] != ev.value && pose_direction_[3] != 1 && ev.value != 2) {
                        pose_direction_[3] =  -ev.value;
//                        std::cout << "Key K: -"<< ev.value << std::endl;
                    }
                    break;
                case KEY_J:
                    //RY+
                    if(pose_direction_[4] != ev.value && pose_direction_[4] != -1 && ev.value != 2) {
                        pose_direction_[4] =  ev.value;
//                        std::cout << "Key J: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_L:
                    //RY-
                    if(pose_direction_[4] != ev.value && pose_direction_[4] != 1 && ev.value != 2) {
                        pose_direction_[4] =  -ev.value;
//                        std::cout << "Key L: -"<< ev.value << std::endl;
                    }
                    break;
                case KEY_U:
                    //RY+
                    if(pose_direction_[5] != ev.value && pose_direction_[5] != -1 && ev.value != 2) {
                        pose_direction_[5] =  ev.value;
//                        std::cout << "Key U: "<< ev.value<< std::endl;
                    }
                    break;
                case KEY_O:
                    //RY-
                    if(pose_direction_[5] != ev.value && pose_direction_[5] != 1 && ev.value != 2) {
                        pose_direction_[5] =  -ev.value;
//                        std::cout << "Key O: -"<< ev.value << std::endl;
                    }
                    break;
                case KEY_ESC:
                    quit_keyboard_offset_thread_ = true;
                    break;
                default:
                    break;
                }
            }
        }
    }

    return;
}
