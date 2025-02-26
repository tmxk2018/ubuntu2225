    --自定义函数区
    --分割字符串函数输出列表
function string.split(str,delimiter)
	if str  ==  nil or str ==  ''  or  delimiter  == nil then
   return  nil
	end
	local  result =  {}
	for match in  (str..delimiter):gmatch("(.-)"..delimiter) do
   table.insert(result,match)
	end
	return result
end
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
        if degrees==nil or degrees=="" then
            return nil
        end
        local radians = {}
        for i , j in ipairs(degrees) do
            radians[i] =j*(pi/180)
        end
        return radians
    end
    
    -- 将弧度列表转换为角度列表
    function radToDegList(radians)
        if radians==nil or radians=="" then
            return nil
        end
        local degrees = {}
        for a , b in ipairs(radians) do
            degrees[a] =b*(180/pi)
        end
        return degrees
    end
----------------------------------------------------------
-- 变量清理
GetDeg={0}
GetRad={0}
GetUpRad={0}
GetUpDeg={0}
currentJointA={0}
currentJointDeg={0}
currentPosA={0}
currentPoseOK={0}
--modbusSetOutputSignal('control', 811)
sleep(0.2)
----------------------------------------------------------
ip = "192.168.192.111" --服务端IP地址
port = 55000 --串口号

client_name = "sokdefkj8iyh" --客户端名称
rec_key = "camera_sendA" --接收服务端发送的字符串
socketOpen(ip, port, client_name) ----与服务端建立通信
sleep(0.5)
-- 触发拍照数据
-- 201,1,固定，之后是关节角，位姿
-- msg_AGV_G01="201,1,-24.24,-11.48,-122.25,-20.81,-90.01,-48.94,-389.93,42.32,294.59,179.966,0.0573,-65.317"

-- GET Current point
currentPosA=getTcpPose()
currentPosOK={currentPosA[1]*1000,currentPosA[2]*1000,currentPosA[3]*1000,toDeg(currentPosA[4]),toDeg(currentPosA[5]),toDeg(currentPosA[6])}

currentJointA = getJointPositions()
currentJointDeg=radToDegList(currentJointA)

sleep(0.5)
----------------------------------------------------------------------------------------------
msgAgvGsend="201,1,"..table.concat(currentJointDeg,",")..","..table.concat(currentPosOK,",")

socketSendLine(msgAgvGsend, client_name) --发送给服务端字符串
sleep(3)

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
sleep(1.2)
--数据处理
textmsg(PointAll[2])
textmsg(PointAll[3])
textmsg(PointAll[4])
textmsg(type(PointAll[3]))
textmsg(type(PointAll))
sleep(1)
if PointAll[3]=="2100" then

    GetUpDeg={PointAll[7],PointAll[8],PointAll[9],PointAll[10],PointAll[11],PointAll[12]}
    GetDeg={PointAll[15],PointAll[16],PointAll[17],PointAll[18],PointAll[19],PointAll[20]}

    GetUpRad=degToRadList(GetUpDeg)
    GetRad=degToRadList(GetDeg)
    sleep(0.1)
    ---------------------------主控部分--------------------------------
    --机械臂移动控制区
    -- if GetRad ~={0} and GetUpRad ~= {0} then

    moveJoint(GetUpRad, 1.0, 1.0, 0, 0)
    moveJoint(GetRad, 1.0, 1.0, 0, 0)
    sleep(1)
    modbusSetOutputSignal('control', 1035)    --抓取
    sleep(2)
    moveJoint(GetUpRad, 1.0, 1.0, 0, 0)

    socketReadString(rec_key, client_name, "", "", true) 
    textmsg("script running finish normally")
    rec_key="ABC"

    -- end
end

-- 结束循环之后

socketClose(client_name)