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

-- 构建 msg_send_G01 字符串
msg_send_G01 = string.format("201,1,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,,%.2f,%.2f",
    currentJointDeg[1], currentJointDeg[2], currentJointDeg[3],
    currentJointDeg[4], currentJointDeg[5], currentJointDeg[6],
    currentPosSend[1], currentPosSend[2], currentPosSend[3],
    currentPosSend[4], currentPosSend[5], currentPosSend[6])

sleep(0.1)
print("Sending: " .. msg_send_G01)
textmsg("Send over ")
socketSendLine(msg_send_G01, client_name)
sleep(2)

-- 告知服务器需要获取数据
msg_send_G02 = "2222,5"
socketSendLine(msg_send_G02, client_name)
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
point_all = rec_str:gsub("[\r\n]+", ","):gsub("%s+", "")
point_abc = string.split(point_all, ",")
	

-- 解析点位数据，确保范围有效
if #point_abc >= 15 then
	
    point_getUp_Rad = degToRadList({table.unpack(point_abc, 3, 8)}) -- 提取 6 个元素
    point_get_Rad = degToRadList({table.unpack(point_abc, 9, 14)}) -- 提取 6 个元素
	
	-- 调试信息：输出转换后的结果
    textmsg("point_getUp_Rad:", table.concat(point_getUp_Rad, ", "))
    textmsg("point_get_Rad:", table.concat(point_get_Rad, ", "))
	
    moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)
    moveJoint(point_get_Rad, 1.0, 1.0, 0, 0)
	
	sleep(2)
	moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)

else
    --print("Error: Not enough data in point_a2.")
	textmsg("data error")
end

if isSocketOpen(client_name) then
    socketClose(client_name)
    textmsg("disconnect from server")
end