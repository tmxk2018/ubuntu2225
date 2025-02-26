----------------------------------------------------------

ip = "192.168.192.111" --服务端IP地址
port = 55000 --串口号

client_name = "sockebvcm1" --客户端名称
rec_key = "camera_send" --接收服务端发送的字符串
socketOpen(ip, port, client_name) ----与服务端建立通信

-- 触发拍照数据
-- 201,1,固定，之后是关节角，位姿
msg_send_G01="201,1,-92.32,7.82,-43.3,38.73,-90,-27.95,-103.18,455.55,668.42,179.86,0.057,-154.36"
socketSendLine(msg_send_G01, client_name) --发送给服务端字符串
sleep(2)

msg_send_G02="203,10,1"
socketSendLine(msg_send_G02, client_name) --发送给服务端字符串
sleep(2)


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

point_all=string.split(rec_str,",")

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
point_getUp_Rad={toRad(point_all[8]),toRad(point_all[9]),toRad(point_all[10]),toRad(point_all[11]),toRad(point_all[12]),toRad(point_all[13])}

point_get_Rad={toRad(point_all[16]),toRad(point_all[17]),toRad(point_all[18]),toRad(point_all[19]),toRad(point_all[20]),toRad(point_all[21])}
sleep(0.1)
textmsg("point_getUp_Rad result")
textmsg(table.concat(point_getUp_Rad,","))
textmsg(table.concat(radToDegList(point_getUp_Rad),"."))
textmsg("point_get_Rad result")
textmsg(table.concat(point_get_Rad,","))
textmsg(table.concat(radToDegList(point_get_Rad),"."))

---------------------------主控部分--------------------------------
--机械臂移动控制区

moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)
moveJoint(point_get_Rad, 1.0, 1.0, 0, 0)

sleep(2)

--抓取
    modbusSetOutputSignal('control', 1035)
    sleep(2)
moveJoint(point_getUp_Rad, 1.0, 1.0, 0, 0)


socketClose(client_name)
textmsg("script running finish")
