ip = "192.168.80.122" -- 服务端IP地址
port = 8000 -- 串口号
local client_name = generateRandomClientName(10) -- 生成10个字符长度的名称
print("Generated Client Name:", client_name)

rec_key = "camera_send" -- 接收服务端发送的字符串
socketOpen(ip, port, client_name) -- 与服务端建立通信

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

-- 构建 msg_send_A1 字符串
msg_send_A1 = string.format("201,1,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,,%.2f,%.2f",
    currentJointDeg[1], currentJointDeg[2], currentJointDeg[3],
    currentJointDeg[4], currentJointDeg[5], currentJointDeg[6],
    currentPosSend[1], currentPosSend[2], currentPosSend[3],
    currentPosSend[4], currentPosSend[5], currentPosSend[6])

sleep(0.1)
print("Sending: " .. msg_send_A1)
textmsg("Send over ")
socketSendLine(msg_send_A1, client_name)
sleep(2)

-- 告知服务器需要获取数据
msg_send_A2 = "22,3"
socketSendLine(msg_send_A2, client_name)
sleep(3)
textmsg("receiving ...")

-- 读取服务器数据
local timeout = 10
local rec_str = ""
local received = false

while not received and timeout > 0 do
    rec_str = socketReadString(rec_key, client_name, "", "", true)
    rec_str = getString(rec_key, "")
    if rec_str ~= "" then
        received = true
    else
        sleep(1)
        timeout = timeout - 1
    end
end

if not received then
    textmsg("received timeout...")
    socketClose(client_name)
    return -- 退出函数，避免后续操作
end

-- 先去掉换行符并去除所有空白字符,然后分割字符
recv_all = rec_str:gsub("[\r\n]+", ","):gsub("%s+", "")
point_abc = string.split(recv_all, ",")
	

-- 解析点位数据，确保范围有效如接收数据1,2,抓取点位的关节角
if #point_abc >= 8 then
	
    point_get_Rad = degToRadList({table.unpack(point_abc, 3, 8)}) -- 提取 6 个元素
	
	-- 调试信息：输出转换后的结果
    textmsg("point_get_Rad:")
	textmsg(table.concat(point_get_Rad, ", "))
	
	-- 运动学正解，输入关节角得到位姿/m
	point_get_pose=forwardToolKinematics(point_get_Rad)
	textmsg("pose ")
	textmsg(table.concat(point_get_pose,","))
	
	-- 定义相对偏移
	local dx=0.05
	local dy=0.05
	local dz=-0.1
	local drz=5*pi/180
	point_new_pose={point_get_pose[1]+dx,point_get_pose[2]+dy,point_get_pose[3]+dz,point_get_pose[4],point_get_pose[5],point_get_pose[6]+drz}
	
	--直线运动
	moveLine(point_new_pose,1.0,1.0,0,0)
	sleep(2)
	moveLine(point_get_pose,1.0,1.0,0,0)
	
	
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
		
		
else
    socketClose(client_name)
    textmsg("disconnect from server")
	textmsg("data error")
end

socketClose(client_name)
textmsg("disconnect from server")
--moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)
--moveJoint(point_get_Rad, 1.0, 1.0, 0, 0)
	