
-- 定义相对偏移
local dx=0.08
local dy=-0.15
local dz=-0.1
local drz=5*pi/180

-- 自定义抓取点的关节角/deg
point_A={-62.45,-0.71,-68.72,21.60,-89.83,-37.36} 



--------------------------------------------------------
--自定义函数区
pi = 3.1416
--弧度转换函数单个
function toRad(degs)
    if degs==nil or degs=="" then
        return nil
    end
    return degs*(pi/180) 
end
-- 弧度转角度单个
function toDeg(rads)
    if rads==nil or rads =="" then
        return nil
    end
    return rads*(180/pi)
end

-- 将角度列表转换为弧度列表
function degToRadList(degrees)
    local radians = {}
    for i,j in ipairs(degrees) do
        radians[i] =j*(pi/180)
    end
    return radians
end

-- 将弧度列表转换为角度列表
function radToDegList(radians)
    local degrees = {}
    for a,b in ipairs(radians) do
        degrees[a] =b*(180/pi)
    end
    return degrees
end
------------------------------------------------------------


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
point_get_Rad = degToRadList(point_A)


-- 输出转换后的结果
textmsg("point_get_Rad:")
textmsg(table.concat(point_get_Rad, ", "))

-- 运动学正解，输入关节角得到位姿/m
point_get_pose=forwardToolKinematics(point_get_Rad)
textmsg("pose ")
textmsg(table.concat(point_get_pose,","))

--相对偏移补偿
point_new_pose={point_get_pose[1]+dx,point_get_pose[2]+dy,point_get_pose[3]+dz,point_get_pose[4],point_get_pose[5],point_get_pose[6]+drz}

--直线运动
moveLine(point_new_pose,1.0,1.0,0,0)
sleep(2)
moveLine(point_get_pose,1.0,1.0,0,0)
