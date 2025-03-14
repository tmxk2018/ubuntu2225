--- Auto generated by 'aubo_scope' v0.31.0-alpha.58 2024-12-22 14:26:28
--- DO NOT MODIFY IT!
local app = {}
local aubo = require('aubo')
local sched = sched or aubo.sched
local math = aubo.math or math
local realtime = aubo.realtime or realtime

local sleep = sched.sleep
local thread = sched.thread
local sync = sched.sync
local run = sched.run
local kill = sched.kill
local halt = sched.halt

app.PRIORITY = 1000 -- set the app priority, which determines app execution order
app.VERSION = "0.1"
app.VENDOR = "Aubo Robotics"

function p_QQ1030()
    local _ENV = sched.select_robot(1)
    setCollisionStopType(1)
    setCollisionLevel(2)
    setHardwareCustomParameters("[over_force_config] \n    is_enable =true")
    setHardwareCustomParameters("handle_enable=false")
    setFreedriveDamp({0.5,0.5,0.5,0.5,0.5,0.5})
    gripper_service = sched.jsonrpc.proxy('http://127.0.0.1:8890/jsonrpc')
    setHomePosition({0,-0.2617993877991494,1.74532925199433,0.4363323129985824,1.570796326794897,0}    )
    modbusDeleteAllSignals()
    setDigitalInputActionDefault()
    setDigitalOutputRunstateDefault()
    modbusAddSignal("/dev/ttyUSB0,115200,N,8,1", 9, 1000, 3, "control", false)
    modbusAddSignal("192.168.192.5,502", 1, 0, 3, "agvGo", true)
    modbusAddSignal("192.168.192.5,502", 1, 18, 0, "agvOK", true)
    modbusAddSignal("192.168.192.5,502", 1, 8, 2, "agvOver", true)
    modbusAddSignal("192.168.192.5,502", 1, 110, 3, "start", true)
    modbusAddSignal("192.168.192.5,502", 1, 111, 3, "finish", true)
    setPayload(3, {0,0,0}, {0,0,0}, {0,0,0,0,0,0,0,0,0})
    local agv =sched.jsonrpc.proxy('http://127.0.0.1:8989/jsonrpc')
    setTcpOffset({0,0,0,0,0,0})
    setToolVoltageOutputDomain(0)
    setToolIoInput(0, true)
    setToolIoInput(1, true)
    setToolIoInput(2, true)
    setToolIoInput(3, true)
    u5e73u9762_0= {}
    tableUp = 0
    tableGet = 0
    point_get = 0
    point_up = 0
    gdddd = 0
    PUT22 = 0
    PutUpJointRad = 0
    GetDeg = 0
    GetUpDeg = 0
    currentPointA = 0
    currentJointDeg = 0
    msg_AGV_G011 = 0
    setLabel(1, "初始变量")
    u57fau5ea7 = {0,0,0,0,0,0}
    u5de5u5177 = {0,0,0,0,0,0}
    homeB_p = {-0.4419816493442164,-0.02939541361270802,0.4153714821372347,-3.141575261292409,1.180186897213941e-06,-1.166830123880053}    
    homeB_q = {-0.2114408691956353,-0.1281247346939537,-1.744902309024726,-0.0459677273664152,-1.570807330879009,-0.6154070720258279}    
    pzdA_p = {-0.009485672829439701,0.4615940184948063,0.5982997236819501,3.141476454620299,6.706527819335114e-06,-2.726534118999417}    
    pzdA_q = {-1.816562390165835,0.00917298026484779,-1.115282537781881,0.4462449549906911,-1.570730302290221,-0.6608245951866126}    
    u8defu70b9_0_p = {-0.4444218383374269,0.1489216203841411,0.3427235281253589,2.595033723028563,0.2439135862433988,-1.208856825442054}    
    u8defu70b9_0_q = {-0.6555741616651132,-0.07584242127521515,-2.077272818247295,-0.926683267347303,-1.230476685472202,-0.9992258578456747}    
    agvUP_p = {-0.5524442540536315,-0.006531594773912054,0.3014491994799465,3.141247803054362,-0.0005380422192934285,-2.747081223725982}    
    agvUP_q = {-0.2099099979898864,0.2029200400644366,-1.710286249320331,-0.3430486541826217,-1.570774318626671,0.9663749987414924}    
    putAGV_p = {-0.5521673531621867,-0.006591998184833889,0.2128001008939658,-3.141325848296592,0.0003217476824557148,-2.747055612044243}    
    putAGV_q = {-0.2099099979898864,0.3008498710961978,-1.846056154815795,-0.5756933324634136,-1.570759646514521,0.966345654517192}    
    u8defu70b9_2_p = {-0.0315269285881425,0.6330002112878919,0.4306754489860602,3.141437565418068,-0.0003217622331080581,1.959044059286706}    
    u8defu70b9_2_q = {-1.713935846274836,0.3609181954673756,-1.15419728383202,0.05532486689017239,-1.570763314542559,1.039409104996894}    
    u8defu70b9_3_p = {-0.03153869258398374,0.6329416054382699,0.5345490399616373,3.141548831121247,-0.0001614156772828101,1.959058102027603}    
    u8defu70b9_3_q = {-1.713932784532425,0.4257597762580788,-0.7779183266861588,0.3669568609312887,-1.570752310458446,1.039398100912781}    
    goUP_p = {-0.5524360672876869,-0.006534749082319861,0.3014435777824375,3.14129981660956,-0.0004885307550774735,-2.747062901431747}    
    goUP_q = {-0.2099099979898864,0.2029139165796136,-1.710289311062742,-0.3429752936218709,-1.570759646514521,0.9663566586013047}    
    get22_p = {-0.5521765604147879,-0.006590036594809344,0.2078094327572521,-3.141356222988641,0.0002777747489833298,-2.747062957204913}    
    get22_q = {-0.2099099979898864,0.3078673847033511,-1.85221944229014,-0.5889275776228475,-1.570759646514521,0.9663566586013047}    
    
    setLabel(2, "机器人编程")
    setLabel(3, "关节运动")
    setLabel(4, "homeB")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(homeB_q, homeB_p), 1.15192, 0.872665, 0, 0)
    
    setLabel(5, "ARCS_function.lua")
    --subscript context start
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
    ---------------------------------------
    
    
    
    -- -- Get Current Point  
    -- currentPosLine=getTcpPose()
    -- -- currentPosSend={currentPosLine[1]*1000,currentPosLine[2]*1000,currentPosLine[3]*1000,toDeg(currentPosLine[4]),toDeg(currentPosLine[5]),toDeg(currentPosLine[6])}
    
    
    --subscript context end
    
    setLabel(6, "等待：1.00s")
    sleep(1)
    
    setLabel(7, "pzdA")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(pzdA_q, pzdA_p), 1.15192, 0.872665, 0, 0)
    
    setLabel(8, "等待：1.00s")
    sleep(1)
    
    setLabel(9, "ARCS_3DPZ.lua")
    --subscript context start
     ip = "192.168.192.111" --服务端IP地址
        port = 55000 --串口号
        client_name = "sockhyybiiD1j" --客户端名称
        rec_key = "camera_send" --接收服务端发送的字符串
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
    print(msg_send_G01)
    textmsg(msg_send_G01)
    ----------------------------------------------------------
    ----------------------------------------------------------
        
        socketSendLine(msg_send_G01, client_name) --发送给服务端字符串
        sleep(2)
        msg_send_G02="203,19,1"
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
    --subscript context end
    
    setLabel(10, "关节运动")
    setLabel(11, "路点_0")
    moveJoint(inverseKinematics(u8defu70b9_0_q, u8defu70b9_0_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(12, "等待：1.00s")
    sleep(1)
    
    setLabel(13, "homeB")
    moveJoint(inverseKinematics(homeB_q, homeB_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(14, "等待：1.00s")
    sleep(1)
    
    setLabel(15, "agvUP")
    moveJoint(inverseKinematics(agvUP_q, agvUP_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(16, "putAGV")
    moveJoint(inverseKinematics(putAGV_q, putAGV_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(17, "设置 control=811")
    modbusSetOutputSignal('control', 811)
    
    setLabel(18, "等待：1.50s")
    sleep(1.5)
    
    setLabel(19, "agvUP")
    moveJoint(inverseKinematics(agvUP_q, agvUP_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(20, "homeB")
    moveJoint(inverseKinematics(homeB_q, homeB_p), 0.872665, 0.698132, 0, 0)
    
    setLabel(21, "等待：5.00s")
    sleep(5)
    
    sched.sync_program_point()
    if (currentPointA == 1.02256) then
        setLabel(22, "如果 currentPointA == 1.02256")
        setLabel(23, "关节运动")
        setLabel(24, "路点_2")
        moveJoint(inverseKinematics(u8defu70b9_2_q, u8defu70b9_2_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(25, "路点_3")
        moveJoint(inverseKinematics(u8defu70b9_3_q, u8defu70b9_3_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(26, "关节运动")
        setLabel(27, "goUP")
        moveJoint(inverseKinematics(goUP_q, goUP_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(28, "get22")
        moveJoint(inverseKinematics(get22_q, get22_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(29, "等待：1.00s")
        sleep(1)
        
        setLabel(30, "设置 control=1035")
        modbusSetOutputSignal('control', 1035)
        
        setLabel(31, "等待：1.50s")
        sleep(1.5)
        
        setLabel(32, "goUP")
        moveJoint(inverseKinematics(goUP_q, goUP_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(33, "homeB")
        moveJoint(inverseKinematics(homeB_q, homeB_p), 1.39626, 1.0472, 0, 0)
        
        setLabel(34, "等待：1.50s")
        sleep(1.5)
    end
end

function app:start(api)
  --
  self.api = api
  print("start---")
  p_QQ1030()
end

function app:robot_error_handler(name, err)
  --
  print("An error hanppen to robot "..name)
end

-- return our app object
return app


