#include "servojexample.h"
#include <unistd.h>
#include <thread>
#include <stdio.h>
#include <fstream>
#include <cstring>

class TrajectoryIo
{
public:
    TrajectoryIo(const char *filename)
    {
        input_file_.open(filename, std::ios::in);
    }
    ~TrajectoryIo() { input_file_.close(); }

    std::vector<std::vector<double>> parse()
    {
        std::vector<std::vector<double>> res;
        std::string tmp;
        int linenum = 1;
        while (std::getline(input_file_, tmp, '\n')) {
            try {
                auto q = split(tmp, ",");
                res.push_back(q);
            } catch (const char *p) {
                std::cerr << "Line: " << linenum << " \"" << p << "\""
                          << " is not a number of double" << std::endl;
                break;
            }
            linenum++;
        }
        return res;
    }
    std::vector<double> split(const std::string &str, const char *delim)
    {
        std::vector<double> res;
        if ("" == str) {
            return res;
        }
        //先将要切割的字符串从string类型转换为char*类型
        char *strs = new char[str.length() + 1]; //不要忘了
        std::strcpy(strs, str.c_str());

        char *p = std::strtok(strs, delim);
        char *endp = nullptr;
        while (p) {
            double v = std::strtod(p, &endp);
            if (endp[0] != 0 && endp[0] != '\r') {
                delete[] strs;
                strs = nullptr;
                throw p;
            }
            res.push_back(v); //存入结果数组
            p = std::strtok(nullptr, delim);
        }

        if (strs) {
            delete[] strs;
            strs = nullptr;
        }

        return res;
    }

private:
    std::ifstream input_file_;
};

using namespace std;

#define IP "192.168.221.195"
//#define IP "127.0.0.1"

#define IP_MASTER "192.168.192.5"
//#define IP_MASTER "127.0.0.1"

ServojExample::ServojExample()
{
}

int ServojExample::demo0()
{
    cout << "按下 Enter 开始初始化机器人：" << endl;
    getchar();

    if (false == startup_robot())
        return -1;

    cout << "按下 Enter 开始轴动到零位：" << endl;
    getchar();

    double target[6] = { 0, 0, 0, 0, 0, 0 };
    if (false == move_joint(target))
        return -2;

    sleep(1);

    if (false == servoj_test_01())
        return -3;

    uninitialize();
}

int ServojExample::demo1()
{
    cout << "按下 Enter 开始初始化机器人：" << endl;
    getchar();

    if (false == startup_robot())
        return -1;

    cout << "按下 Enter 开始轴动到零位：" << endl;
    getchar();

    double target[6] = { 0, 0, 0, 0, 0, 0 };
    if (false == move_joint(target))
        return -2;

    sleep(1);

    if (false == servoj_test_02())
        return -3;

    uninitialize();
}

int ServojExample::demo2()
{
    cout << "按下 Enter 开始初始化机器人：" << endl;
    getchar();

    if (false == startup_robot())
        return -1;

    cout << "按下 Enter 开始轴动到零位：" << endl;
    getchar();

    double target[6] = { 0, 0, 0, 0, 0, 0 };
    if (false == move_joint(target))
        return -2;

    sleep(1);

    if (false == servoj_test_04())
        return -3;

    uninitialize();
}

int ServojExample::demo3()
{
    cout << "按下 Enter 开始初始化机器人：" << endl;
    getchar();

    if (false == startup_robot())
        return -1;

    cout << "按下 Enter 开始轴动到零位：" << endl;
    getchar();

    double target[6] = { 0, 0, 0, 0, 0, 0 };
    if (false == move_joint(target))
        return -2;

    sleep(1);

    if (false == servoj_test_03())
        return -3;

    uninitialize();
}

bool ServojExample::startup_robot()
{
    if (robot.robotServiceLogin(IP, 8899, "SERVOJ_DEMO", "SERVOJ_DEMO") !=
        aubo_robot_namespace::ErrnoSucc) {
        std::cout << "登录失败" << std::endl;
        return false;
    }
    std::cout << "登录成功" << std::endl;
    //如果有真实机，才startup
    aubo_robot_namespace::RobotWorkMode mode;
    if (aubo_robot_namespace::ErrnoSucc !=
        robot.robotServiceGetRobotWorkMode(mode)) {
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
        aubo_robot_namespace::ROBOT_SERVICE_STATE state =
            aubo_robot_namespace::ROBOT_SERVICE_READY;

        if (robot.rootServiceRobotStartup(
                tool_dynamics, colli_class, read_pos, static_colli_detect,
                board_maxacc, state) == aubo_robot_namespace::ErrnoSucc) {
            result = true;
            std::cout << "call robot startup succ, robot state:" << state
                      << std::endl;
        } else {
            std::cerr << "robot startup failed" << std::endl;
            return false;
        }
    } else {
        std::cout << "simulate robot" << std::endl;
    }

    return true;
}

bool ServojExample::move_joint(double target_joint_pos[])
{
    if (robot.robotServiceInitGlobalMoveProfile() !=
        aubo_robot_namespace::ErrnoSucc) {
        return false;
    }
    aubo_robot_namespace::JointVelcAccParam maxacc;
    aubo_robot_namespace::JointVelcAccParam maxvelc;
    for (int i = 0; i < 6; i++) {
        maxacc.jointPara[i] = 1;
        maxvelc.jointPara[i] = 0.3;
    }
    if (robot.robotServiceSetGlobalMoveJointMaxAcc(maxacc) !=
        aubo_robot_namespace::ErrnoSucc) {
        return false;
    }
    if (robot.robotServiceSetGlobalMoveJointMaxVelc(maxvelc) !=
        aubo_robot_namespace::ErrnoSucc) {
        return false;
    }

    if (robot.robotServiceJointMove(target_joint_pos, true) !=
        aubo_robot_namespace::ErrnoSucc) {
        std::cerr << "move to zero failed" << std::endl;
        return false;
    }

    return true;
}

bool ServojExample::servoj_test_01()
{
    /////////////////////   login   ////////////////////////
    // servoj 服务器的端口默认为 6000，可通过机器人系统内的配置文件自定义
    if (0 == client.login(IP, 6000, "test", "1234")) {
        cout << "login succ" << endl;
    } else {
        cerr << "login fail" << endl;
        return false;
    }

    /////////////////////   startServoj   ////////////////////////

    sleep(1);
    cout << "press Enter to enter servoj mode:" << endl;
    getchar();

    // 注意：进入 servoj 模式同时也会进入 tcp2can
    // 透传模式，此时无法通过其他方式控制机器人运动，比如示教器上的示教按钮
    // servojclient 一旦断开与 servoj 服务器的连接，会自动退出 servoj 模式
    if (0 == client.startServoj()) {
        cout << "startServoj succ" << endl;
    } else {
        cerr << "startServoj fail" << endl;
        return false;
    }

    /////////////////////   servoj   ////////////////////////

    cout << "press Enter to start track1:" << endl;
    getchar();

    int step = 0;
    aubo_robot_namespace::wayPoint_S wayPoint;

    if (0 != robot.robotServiceGetCurrentWaypointInfo(wayPoint))
        return false;

    while (step < 1000) {
        // 重要：

        // 此示例中，下发的为 0.01s 间隔、关节角度增量为 0.1°的轨迹点（0 ->
        // 100°等分的 1000 个轨迹点） 每个点的目标运行时长为 0.01s
        // 原则上，应该保证 servoj 的调用周期和 每个点的运动时长 一致，
        // 如果调用周期快于运动时长，轨迹实际运动会有滞后，例如表现为所有轨迹点已经发完，但是机械臂实际还没有运动到最后一个点
        // 如果调用周期慢于运动时长，会有数据饥饿，例如表现为机械臂关节咔咔响

        // 目前，运动时长和发送周期建议在 8ms 以上
        // 实际使用中，通过调整 每个目标点的距离、duration运动时长、下发周期
        // 这几个参数，来达到比较好的效果

        double joint[6] = {
            wayPoint.jointpos[0] + 0.001745 * step, 0, 0, 0, 0, 0
        };

        double total_delay_time = 0;
        auto retval = client.servoj(joint, max_joint_velc_, max_joint_acc_,
                                    0.008, 1, 1, total_delay_time);

        if (retval != 0) {
            cerr << "servoj fail ret =" << retval << endl;
            return false;
        }
        cout << "total_delay_time = " << total_delay_time << endl;
        // 如果延迟大于50ms，强制延迟
        if (total_delay_time > 0.05) {
            usleep((total_delay_time - 0.05) * 1000000);
        }

        step++;

        usleep(5500);
    }

    // 对于轨迹最后一个点，servoj_servoj 的最后一个参数必须为
    // true，使机械臂能够完成减速规划和内部状态复位
    double track1_end[6] = { 1.745, 0, 0, 0, 0, 0 };
    client.servoj(track1_end, 0.008, 1, 1, true);

    sleep(1);
    cout << "servoj finished track1" << endl;

    /////////////////////   servoj   ////////////////////////

    cout << "press Enter to start track2:" << endl;
    getchar();

    if (0 != robot.robotServiceGetCurrentWaypointInfo(wayPoint))
        return false;

    step = 0;
    while (step < 1000) {
        double joint[6] = {
            wayPoint.jointpos[0] - 0.001745 * step, 0, 0, 0, 0, 0
        };

        double total_delay_time = 0;
        auto retval = client.servoj(joint, max_joint_velc_, max_joint_acc_,
                                    0.008, 1, 1, total_delay_time);

        if (retval != 0) {
            cerr << "servoj fail ret =" << retval << endl;
            return false;
        }
        cout << "total_delay_time = " << total_delay_time << endl;
        // 如果延迟大于50ms，强制延迟
        if (total_delay_time > 0.05) {
            usleep((total_delay_time - 0.05) * 1000000);
        }

        step++;

        usleep(5500);
    }

    double track2_end[6] = { 0, 0, 0, 0, 0, 0 };
    client.servoj(track2_end, 0.008, 1, 1, true);

    sleep(1);
    cout << "servoj finished track2" << endl;

    /////////////////////   stopServoj   ////////////////////////

    cout << "press Enter to exit servoj mode:" << endl;
    getchar();

    if (0 == client.stopServoj()) {
        cout << "stopServoj succ" << endl;
    } else {
        cerr << "stopServoj fail" << endl;
        return false;
    }

    /////////////////////   logout   ////////////////////////

    if (0 == client.logout()) {
        cout << "logout succ" << endl;
    } else {
        cerr << "logout fail" << endl;
        return false;
    }

    return true;
}

bool ServojExample::servoj_test_02()
{
    /////////////////////   login   ////////////////////////
    // servoj 服务器的端口默认为 6000，可通过机器人系统内的配置文件自定义
    if (0 == client.login(IP, 6000, "test", "1234")) {
        cout << "login succ" << endl;
    } else {
        cerr << "login fail" << endl;
        return false;
    }

    double target[6] = { 0, 0, 0, 0, 0, 0 };
    if (false == move_joint(target))
        return false;

    /////////////////////   startServoj   ////////////////////////

    sleep(1);

    // 注意：进入 servoj 模式同时也会进入 tcp2can
    // 透传模式，此时无法通过其他方式控制机器人运动，比如示教器上的示教按钮
    // servojclient 一旦断开与 servoj 服务器的连接，会自动退出 servoj 模式
    if (0 == client.startServoj()) {
        cout << "startServoj succ" << endl;
    } else {
        cerr << "startServoj fail" << endl;
        return false;
    }

    int count = 0;
    while (1) {
        /////////////////////   servoj   ////////////////////////

        int step = 0;
        aubo_robot_namespace::wayPoint_S wayPoint;

        if (0 != robot.robotServiceGetCurrentWaypointInfo(wayPoint))
            return false;

        while (step < 1000) {
            // 重要：

            // 此示例中，下发的为 0.01s 间隔、关节角度增量为 0.1°的轨迹点（0 ->
            // 100°等分的 1000 个轨迹点） 每个点的目标运行时长为 0.01s
            // 原则上，应该保证 servoj 的调用周期和 每个点的运动时长 一致，
            // 如果调用周期快于运动时长，轨迹实际运动会有滞后，例如表现为所有轨迹点已经发完，但是机械臂实际还没有运动到最后一个点
            // 如果调用周期慢于运动时长，会有数据饥饿，例如表现为机械臂关节咔咔响

            // 目前，运动时长和发送周期建议在 8ms 以上
            // 实际使用中，通过调整 每个目标点的距离、duration运动时长、下发周期
            // 这几个参数，来达到比较好的效果

            double joint[6] = {
                wayPoint.jointpos[0] + 0.001745 * step, 0, 0, 0, 0, 0
            };
            double v[6] = { 0 };
            double a[6] = { 0 };

            double total_delay_time = 0;
            auto retval =
                client.servoj(joint, v, a, 0.008, 1, 1, total_delay_time);

            if (retval != 0) {
                cerr << "servoj fail ret =" << retval << endl;
                return false;
            }

            cout << "total_delay_time = " << total_delay_time << endl;
            // 如果延迟大于50ms，强制延迟
            if (total_delay_time > 0.05) {
                usleep((total_delay_time - 0.05) * 1000000);
            }

            step++;

            usleep(5500);
        }

        // 对于轨迹最后一个点，servoj_servoj 的最后一个参数必须为
        // true，使机械臂能够完成减速规划和内部状态复位
        double track1_end[6] = { 1.745, 0, 0, 0, 0, 0 };
        client.servoj(track1_end, 0.008, 1, 1, true);

        sleep(2);
        cout << "servoj finished track1" << endl;

        /////////////////////   servoj   ////////////////////////

        step = 0;
        if (0 != robot.robotServiceGetCurrentWaypointInfo(wayPoint))
            return false;
        while (step < 1000) {
            double joint[6] = {
                wayPoint.jointpos[0] - 0.001745 * step, 0, 0, 0, 0, 0
            };
            double v[6] = { 0 };
            double a[6] = { 0 };

            double total_delay_time = 0;
            auto retval =
                client.servoj(joint, v, a, 0.008, 1, 1, total_delay_time);

            if (retval < 0) {
                cerr << "servoj fail ret =" << retval << endl;
                return false;
            }
            cout << "total_delay_time = " << total_delay_time << endl;
            // 如果延迟大于50ms，强制延迟
            if (total_delay_time > 0.05) {
                usleep((total_delay_time - 0.05) * 1000000);
            }

            step++;

            usleep(5500);
        }

        double track2_end[6] = { 0, 0, 0, 0, 0, 0 };
        client.servoj(track2_end, 0.008, 1, 1, true);

        cout << "count = " << count++ << endl;
        sleep(2);
        cout << "servoj finished track2" << endl;

    } // while(1)

    /////////////////////   stopServoj   ////////////////////////

    if (0 == client.stopServoj()) {
        cout << "stopServoj succ" << endl;
    } else {
        cerr << "stopServoj fail" << endl;
        return false;
    }

    /////////////////////   logout   ////////////////////////

    if (0 == client.logout()) {
        cout << "logout succ" << endl;
    } else {
        cerr << "logout fail" << endl;
        return false;
    }

    return true;
}

void ServojExample::servoj_test_03_thread()
{
    /////////////////////   login   ////////////////////////
    // servoj 服务器的端口默认为 6000，可通过机器人系统内的配置文件自定义
    if (0 == client.login(IP, 6000, "test", "1234")) {
        cout << "login succ" << endl;
    } else {
        cerr << "login fail" << endl;
        return;
    }

    /////////////////////   startServoj   ////////////////////////

    // 注意：进入 servoj 模式同时也会进入 tcp2can
    // 透传模式，此时无法通过其他方式控制机器人运动，比如示教器上的示教按钮
    // servojclient 一旦断开与 servoj 服务器的连接，会自动退出 servoj 模式
    if (0 == client.startServoj()) {
        cout << "startServoj succ" << endl;
    } else {
        cerr << "startServoj fail" << endl;
        return;
    }

    while (!quit_thread) {
        // 获取 master 实时位置
        aubo_robot_namespace::wayPoint_S wayPoint;
        if (robot_master.robotServiceGetCurrentWaypointInfo(wayPoint) !=
            aubo_robot_namespace::ErrnoSucc) {
            std::cout << "获取当前位置失败" << std::endl;
            continue;
        }

        // servoj 发送给 slave
        auto retval = client.servoj(wayPoint.jointpos, 0.008, 1, 1);
        if (retval < 0) {
            cerr << "servoj fail ret =" << retval << endl;
            break;
        }

        usleep(7000);
    }

    // 退出 servoj 模式
    if (0 == client.stopServoj()) {
        cout << "stopServoj succ" << endl;
    } else {
        cerr << "stopServoj fail" << endl;
        return;
    }
}

bool ServojExample::servoj_test_03()
{
    // 登录 master 机器人
    if (robot_master.robotServiceLogin(IP_MASTER, 8899, "SERVOJ_DEMO",
                                       "SERVOJ_DEMO") !=
        aubo_robot_namespace::ErrnoSucc) {
        std::cout << "登录失败" << std::endl;
        return false;
    }
    std::cout << "登录成功" << std::endl;

    // 获取 master 当前位置
    aubo_robot_namespace::wayPoint_S wayPoint;
    if (robot_master.robotServiceGetCurrentWaypointInfo(wayPoint) !=
        aubo_robot_namespace::ErrnoSucc) {
        std::cout << "获取当前位置失败" << std::endl;
        return false;
    }

    // slave 轴动到 master 位置
    cout << "按下 Enter 让 slave 运动到起始点:" << endl;
    getchar();
    if (false == move_joint(wayPoint.jointpos))
        return false;

    // 开始 跟随线程
    cout << "按下 Enter 让 开始跟随:" << endl;
    getchar();
    std::thread th(&ServojExample::servoj_test_03_thread, this);

    // 按下 q 和 Enter 退出跟随线程
    int ch = 0;
    while ((ch = getchar()) != 'q') {
    }
    quit_thread = true;
    th.join();

    // 退出登录 master
    robot_master.robotServiceLogout();
}

bool ServojExample::servoj_test_04()
{
    TrajectoryIo input("./record6.offt");

    auto traj = input.parse();
    auto traj_sz = traj.size();
    if (traj_sz == 0) {
        // 没有轨迹
        std::cerr << "No waypoints" << std::endl;
        return false;
    }

    /////////////////////   login   ////////////////////////

    ServojInterface client;
    if (0 == client.login(IP, 6000, "test", "1234")) {
        cout << "login succ" << endl;
    } else {
        cerr << "login fail" << endl;
        return false;
    }

    /////////////////////   startServoj   ////////////////////////

    sleep(1);

    if (0 == client.startServoj()) {
        cout << "startServoj succ" << endl;
    } else {
        cerr << "startServoj fail" << endl;
        return false;
    }

    /////////////////////   servoj   ////////////////////////

    cout << "press Enter to start track1:" << endl;
    getchar();

    int step = 0;
    while (step < traj_sz) {
        double joint[6] = { 0 };
        for (int i = 0; i < 6; i++)
            joint[i] = traj[step][i];

        auto retval = client.servoj(joint, 0.008, 1, 1);

        if (retval < 0) {
            cerr << "servoj fail ret =" << retval << endl;
            break;
        }

        step++;

        usleep(7500);
    }

    double track1_end[6] = { 0, 0, 0, 0, 0, 0 };
    client.servoj(track1_end, 0.01, 1, 1, true);

    cout << "servoj finished track1" << endl;

    /////////////////////   stopServoj   ////////////////////////

    getchar();

    if (0 == client.stopServoj()) {
        cout << "stopServoj succ" << endl;
    } else {
        cerr << "stopServoj fail" << endl;
        return false;
    }

    /////////////////////   logout   ////////////////////////

    if (0 == client.logout()) {
        cout << "logout succ" << endl;
    } else {
        cerr << "logout fail" << endl;
    }
}

bool ServojExample::uninitialize()
{
    robot.robotServiceLogout();

    return true;
}
