----------------------------------------------------------

ip = "192.168.192.111" --服务端IP地址
port = 55000 --串口号

client_name = "sockyddqA2" --客户端名称
rec_key = "camera_sendA" --接收服务端发送的字符串
socketOpen(ip, port, client_name) ----与服务端建立通信

-- 触发拍照数据
-- 201,1,固定，之后是关节角，位姿
-- msg_AGV_G01="201,1,-92.32,7.82,-43.3,38.73,-90,-27.95,-103.18,455.55,668.42,179.86,0.057,-154.36"
msg_AGV_G01="201,1,-24.24,-11.48,-122.25,-20.81,-90.01,-48.94,-389.93,42.32,294.59,179.966,0.0573,-65.317"
socketSendLine(msg_AGV_G01, client_name) --发送给服务端字符串
sleep(5)

-- msg_AGV_G02="203,10,1"
-- socketSendLine(msg_AGV_G02, client_name) --发送给服务端字符串
-- sleep(2)

--接收数据
msg_send_G03="205,1"
socketSendLine(msg_send_G03, client_name) --发送给服务端字符串
sleep(2)
rec_str = ""
-- ------------------------------------------------
--接收服务端发送的字符串后停止循环
while(rec_str == nil or rec_str == "") 
do
  socketReadString(rec_key, client_name, "", "", true) 

  rec_str = getString(rec_key, "")

end

PointAll=string.split(rec_str,",")

-- point_get=rec_str
-- textmsg("up point")
-- textmsg(point_all[7])
-- textmsg(point_all[12])
-- textmsg("get point")
-- textmsg(point_all[15])
-- textmsg(point_all[20])
--textmsg(point_get)
-- --------------------------------------------------
--设置相对移动
--setTcpOffset({0,0,0.02,0,0,0})


GetUpDeg={PointAll[7],PointAll[8],PointAll[9],PointAll[10],PointAll[11],PointAll[12]}
GetDeg={PointAll[15],PointAll[16],PointAll[17],PointAll[18],PointAll[19],PointAll[20]}


GetUpRad=degToRadList(GetUpDeg)

GetRad=degToRadList(GetDeg)

sleep(0.1)
textmsg("GetUpRad result")
textmsg(table.concat(GetUpRad,","))
textmsg(table.concat(GetUpDeg),".")
textmsg("GetRad result")
textmsg(table.concat(GetRad,","))
textmsg(table.concat(GetDeg,"."))

---------------------------主控部分--------------------------------
--机械臂移动控制区

moveJoint(GetUpRad, 1.0, 1.0, 0, 0)
moveJoint(GetRad, 1.0, 1.0, 0, 0)

sleep(2)

--抓取
    modbusSetOutputSignal('control', 1035)
    sleep(2)
moveJoint(GetUpRad, 1.0, 1.0, 0, 0)


socketClose(client_name)
textmsg("script running finish")
