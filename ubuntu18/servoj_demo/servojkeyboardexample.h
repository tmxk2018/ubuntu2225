#ifndef SERVOJKEYBOARDEXAMPLE_H
#define SERVOJKEYBOARDEXAMPLE_H

#include "servojinterface.h"
#include "serviceinterface.h"

class ServojKeyBoardExample
{
public:
    ServojKeyBoardExample();

    int KeyBoardDemo();

private:

    bool quit_keyboard_offset_thread_{false};

    ServiceInterface robot_;
    ServojInterface client_;

    double max_joint_velc_[6] = {1.25 , 1.25 , 1.25, 1.55, 1.55, 1.55}; // I5机械臂的最大速度50%
    double max_joint_acc_[6] = {8.6, 8.6, 8.6, 10.35, 10.35, 10.35};    // I5机械臂的最大加速度50%

//    double max_joint_velc_[6] = {0.0};
//    double max_joint_acc_[6] = {0.0};

    char* keyboard_event_path_;
    int pose_direction_[aubo_robot_namespace::ARM_DOF]{0, 0, 0, 0, 0, 0};

    bool startupRobot();
    bool moveJoint(double target_joint_pos[aubo_robot_namespace::ARM_DOF]);
    bool uninitialize();

    double calculateRobotOffsetStep(double target_offset, double current_offset, double velc);
    void runTrajectoryByKeyborad();

    char *getKeyboardDeviceName();
    void listenKeyboardEventThread();
};

#endif // SERVOJKEYBOARDEXAMPLE_H
