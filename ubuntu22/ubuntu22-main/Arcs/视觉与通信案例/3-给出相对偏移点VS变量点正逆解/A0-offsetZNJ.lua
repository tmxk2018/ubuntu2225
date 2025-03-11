
-- 定义相对偏移
local dx=0.08
local dy=-0.15
local dz=-0.1
local drz=5*pi/180

-- 自定义抓取点的关节角/deg
point_A={-62.45,-0.71,-68.72,21.60,-89.83,-37.36} 


sleep(0.2)
textmsg("get current point ...")

-- 获取 TCP 位姿
currentPosLine = getTcpPose()
currentPosSend = {
    currentPosLine[1] * 1000,
    currentPosLine[2] * 1000,
    currentPosLine[3] * 1000,
    toDeg(currentPosLine[4]),
    toDeg(currentPosLine[5]),
    toDeg(currentPosLine[6])
}

-- 获取关节角度
currentJointRad = getJointPositions() 
currentJointDeg = radToDegList(currentJointRad)

--角度转为弧度
--point_get_Rad = degToRadList({table.unpack(point_A, 1,6)}) -- 提取 6 个元素
point_get_Rad = degToRadList(point_A)


-- 输出转换后的结果
textmsg("point_get_Rad:")
textmsg(table.concat(point_get_Rad, ", "))

-- 运动学正解，输入关节角得到位姿/m
point_get_pose=forwardToolKinematics(point_get_Rad)
textmsg("pose ")
textmsg(table.concat(point_get_pose,","))


point_new_pose={point_get_pose[1]+dx,point_get_pose[2]+dy,point_get_pose[3]+dz,point_get_pose[4],point_get_pose[5],point_get_pose[6]+drz}

--直线运动
moveLine(point_new_pose,1.0,1.0,0,0)
sleep(2)
moveLine(point_get_pose,1.0,1.0,0,0)

-------------------------------------------------------------------------------
-- 运动学逆解输入，参考关节角和位姿，返回关节角/rad
rec_joint_rad=inverseKinematics({0,0,0,0,0,0},point_get_pose)
textmsg("joint ")
textmsg(table.concat(rec_joint_rad,","))

-- 获取当前关节角度作为参考
currentJointRad = getJointPositions() 
joint_rad_new=inverseKinematics(currentJointRad,point_get_pose)
textmsg(table.concat(joint_rad_new,","))

--关节运动
moveJoint(joint_rad_new,1.0,1.0,0,0)
--moveJoint({0,0,0,0,0,0},1.0,1.0,0,0)
