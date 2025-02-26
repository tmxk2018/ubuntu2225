ip = "192.168.192.111" --服务端IP地址
port = 55000 --串口号

local client_name = generateRandomClientName(10) -- 这里指定生成10个字符长度的名称
print("Generated Client Name:", client_name)
rec_key = "camera_sendQQ" --接收服务端发送的字符串
socketOpen(ip, port, client_name) ----与服务端建立通信

point_all=0
    -- 触发拍照数据
    -- 201,1,固定，之后是关节角，位姿
    -- msg_send_G01="201,1,-92.32,7.82,-43.3,38.73,-90,-27.95,-103.18,455.55,668.42,179.86,0.057,-154.36"
----------------------------------------------------------
----------------------------------------------------------
    -- 当前点位--TCP的位姿,形式为(x,y,z,rx,ry,rz)
    currentPosLine=getTcpPose()
    -- currentPosLine=getTcpTargetPose()

    -- 将角度从弧度转换为角度
    currentPosSend = {
        currentPosLine[1] * 1000,
        currentPosLine[2] * 1000,
        currentPosLine[3] * 1000,
        toDeg(currentPosLine[4]),
        toDeg(currentPosLine[5]),
        toDeg(currentPosLine[6])
    }
    -- 当前关机角--rad
    currentJointRad = getJointPositions()-- return rad
    currentJointDeg=radToDegList(currentJointRad)

    -- currentPosSend={currentPosLine[1]*1000,currentPosLine[2]*1000,currentPosLine[3]*1000,toDeg(currentPosLine[4]),toDeg(currentPosLine[5]),toDeg(currentPosLine[6])}
-- 构建 msg_send_G01 字符串
-- 构建 msg_send_G01 字符串
msg_send_G01 = string.format("201,1,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,,%.2f,%.2f",
    currentJointDeg[1], currentJointDeg[2], currentJointDeg[3],
    currentJointDeg[4], currentJointDeg[5], currentJointDeg[6],
    currentPosSend[1], currentPosSend[2], currentPosSend[3],
    currentPosSend[4], currentPosSend[5], currentPosSend[6])

    -- 打印结果
-- print(msg_send_G01)
textmsg(msg_send_G01)
----------------------------------------------------------
----------------------------------------------------------

    
    socketSendLine(msg_send_G01, client_name) --发送给服务端字符串
    sleep(2)
    msg_send_G02="203,19,2"
    socketSendLine(msg_send_G02, client_name) --发送给服务端字符串
    sleep(3)
    --接收数据
    msg_send_G03="205,1"
    socketSendLine(msg_send_G03, client_name) --发送给服务端字符串
    sleep(3)
    rec_str = ""
    -- ------------------------------------------------
    --接收服务端发送的字符串后停止循环
    while(rec_str == nil or rec_str == "") 
    do
      socketReadString(rec_key, client_name, "", "", true) 
      rec_str = getString(rec_key, "")
    end
    point_all=string.split(rec_str,",")
    -- point_get=rec_str
    -- textmsg("up point")
    textmsg(point_all[7])
    textmsg(point_all[12])
    -- textmsg("get point")
    textmsg(point_all[15])
    -- textmsg(point_all[20])
    --textmsg(point_get)
    -- --------------------------------------------------
    --设置相对移动
    --setTcpOffset({0,0,0.02,0,0,0})
    point_getUp_Rad={toRad(point_all[8]),toRad(point_all[9]),toRad(point_all[10]),toRad(point_all[11]),toRad(point_all[12]),toRad(point_all[13])}
    point_get_Rad={toRad(point_all[16]),toRad(point_all[17]),toRad(point_all[18]),toRad(point_all[19]),toRad(point_all[20]),toRad(point_all[21])}
    sleep(0.1)
    textmsg("point_getUp_Rad result")
    textmsg(table.concat(point_getUp_Rad,","))
    textmsg(table.concat(radToDegList(point_getUp_Rad),"."))
    textmsg("point_get_Rad result")
    textmsg(table.concat(point_get_Rad,","))
    textmsg(table.concat(radToDegList(point_get_Rad),"."))


    socketClose(client_name)


    ---------------------------主控部分--------------------------------
gddDegput={-104.67,-5.44,-112.71,-102.37,-76.57,-21.48}
gddRadput=degToRadList(gddDegput)

    moveJoint(gddRadput, 1.0, 1.0, 0, 0)

    --机械臂移动控制区
    moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)
    sleep(2)

    moveJoint(point_get_Rad, 1.0, 1.0, 0, 0)
    sleep(1)
    --put--put
        modbusSetOutputSignal('control', 299)
        sleep(0.25)
    moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)
    moveJoint(gddRadput, 1.0, 1.0, 0, 0)

