
ip = "192.168.192.111" --服务端IP地址
port = 55000 --串口号

client_name = "socketPujmm1" --客户端名称

socketOpen(ip, port, client_name) ----与服务端建立通信
sleep(2)

--------------------------------------通信部分----------------------------------------------
-- 发送拍照数据

msg_send_put01="201,1,-94.48,7.33,-59.56,11.43,-91.11,-29.68,-78.88,525.08,602.92,170.34,6.7,-155.5"
socketSendLine(msg_send_put01, client_name) --发送给服务端字符串
sleep(2)

msg_send_put02="203,10,2"
socketSendLine(msg_send_put02, client_name) --发送给服务端字符串
sleep(2)

msg_send_put03="205,1"
socketSendLine(msg_send_put03, client_name) --发送给服务端字符串
sleep(1)

--接受数据
rec_str = ""
rec_key = "camera_send2" --接收服务端发送的字符串
--接收服务端发送的字符串后停止循环
while(rec_str == nil or rec_str == "") 
do
  socketReadString(rec_key, client_name, "", "", true) 
  rec_str = getString(rec_key, "")

end

------------------------------数据处理--------------------------------
--------------------------------------------------------
GddADeg={-93.59,23.09,-114.39,-139.07,-87.17,-24.26}
GddARad=degToRadList(GddADeg)
sleep(0.001)
pzdDeg={-94.48,7.33,-59.56,11.43,-91.11,-29.86}
pzdRad=degToRadList(pzdDeg)
textmsg("start running ...")
sleep(0.001)

--机械臂移动参数设置区
pointPutAll=string.split(rec_str,",")
point_get=rec_str
-- textmsg("up point")
-- textmsg(pointPutAll[7])
-- textmsg(pointPutAll[12])

-- textmsg("get point")
-- textmsg(pointPutAll[15])
-- textmsg(pointPutAll[20])
-- textmsg(point_get)
----------------------------------------------------
PutUpJointDeg0={pointPutAll[8],pointPutAll[9],pointPutAll[10],pointPutAll[11],pointPutAll[12],pointPutAll[13]}
PutJointDeg0={pointPutAll[16],pointPutAll[17],pointPutAll[18],pointPutAll[19],pointPutAll[20],pointPutAll[21]}
-- PutUpJointRad={toRad(pointPutAll[7]),toRad(pointPutAll[8]),toRad(pointPutAll[9]),toRad(pointPutAll[10]),toRad(pointPutAll[11]),toRad(pointPutAll[12])}
-- PutJointRad={toRad(pointPutAll[15]),toRad(pointPutAll[16]),toRad(pointPutAll[17]),toRad(pointPutAll[18]),toRad(pointPutAll[19]),toRad(pointPutAll[20])}
sleep(0.001)

PutUpJointRad=degToRadList(PutUpJointDeg0)
PutJointRad=degToRadList(PutJointDeg0)

textmsg("PutUpJointRad result")
textmsg(table.concat(PutUpJointRad,","))
textmsg("PutUpJointDeg result")
textmsg(table.concat(PutUpJointDeg0,","))
sleep(0.001)
textmsg("PutJointRad result")
textmsg(table.concat(PutJointRad,","))
textmsg("PutJointDeg result")
textmsg(table.concat(PutJointDeg0,","))
sleep(0.01)

---------------------------主控部分--------------------------------
--机械臂移动控制区

moveJoint(GddARad, 1.0, 1.0, 0, 0)

--视觉伺服点
moveJoint(PutUpJointRad, 1.0, 1.0, 0, 0)
moveJoint(PutJointRad,1.0, 1.0, 0, 0)
sleep(2)

--放置
modbusSetOutputSignal('control', 811)
sleep(1)

--视觉伺服点
moveJoint(PutUpJointRad,1.0, 1.0, 0,0)
moveJoint(GddARad, 1.0, 1.0, 0, 0)
moveJoint(pzdRad, 1.0, 1.0, 0, 0)
----------------------------------------------------
socketClose(client_name)
textmsg("running finish")
