#ifndef SERVOJEXAMPLE_H
#define SERVOJEXAMPLE_H

#include "servojinterface.h"
#include "serviceinterface.h"


class ServojExample
{
public:
    ServojExample();

    // servoj 简单示例：joint1 从 0 -> 100°-> 0°，步进值为 0.1°
    int demo0();

    // 自动循环测试
    int demo1();

    // 离线轨迹
    int demo2();

    // 同步运动：两台机械臂动作同步
    int demo3();

private:
    ServojInterface client;
    ServiceInterface robot;
    ServiceInterface robot_master;

    bool quit_thread = false;

    double max_joint_velc_[6] = {0};
    double max_joint_acc_[6] = {0};

    bool startup_robot();
    bool move_joint(double target_joint_pos[6]);
    bool servoj_test_01(); // servoj 简单示例：joint1 从 0 -> 100°-> 0°，步进值为 0.1°
    bool servoj_test_02(); // 自动循环测试
    void servoj_test_03_thread(); // 同步运动线程
    bool servoj_test_03(); // 同步运动
    bool servoj_test_04(); // 离线轨迹

    bool uninitialize(); // 状态复位
};

#endif // SERVOJEXAMPLE_H
