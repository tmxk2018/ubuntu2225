
    pzd_p = {-0.1031820082469535,0.4555501797707873,0.6684328864473573,3.139393731061584,0.001203875487738723,-2.694252353521048}    
    pzd_q = {-1.611196017914612,0.1365598350376306,-0.7557819290510288,0.6759478747853781,-1.570829339047234,-0.4877413561793484}    
    getup_p = {-0.1447488645639831,0.615269824361797,0.503480443698855,3.141013882740093,-0.001910824776384787,1.942948688626845}    
    getup_q = {-1.533179759527233,0.3883514074743971,-0.9197045560202164,0.2607454410763638,-1.570715630178071,1.236261165687399}    
    get_p = {-0.1447424907620278,0.6152197880812216,0.433584738265234,3.140933008474006,-0.002121293887962467,1.942920704608348}    
    get_q = {-1.533185883012056,0.3560530867755055,-1.153676787622065,0.05884617380620803,-1.570722966234146,1.236275837799549}    
    homeA_p = {-0.4544123117949642,-0.06242110509652263,0.4900353489150864,3.138013982338131,0.001831212770194146,-1.229411444343532}    
    homeA_q = {-0.1315783801341234,-0.07986248906151193,-1.504062589193888,0.1425762498190679,-1.570796326794897,-0.4729665392441489}    
    agvUp_p = {-0.5528841817229943,0.0001675628573553607,0.3226104485490393,3.141409044654606,-0.0003351266064415766,-2.708064043044712}    
    agvUp_q = {-0.2218783490764318,0.1877644151275219,-1.669534457823293,-0.2868801408438157,-1.570741306374334,0.9153894090197263}    
    agvPut_p = {-0.5529880149504983,0.0001984667430490907,0.221032958929334,3.141526149503554,-0.0001707627909396595,-2.708076321665692}    
    agvPut_q = {-0.2218905960460778,0.2913247904540278,-1.833417282141131,-0.5541216595746578,-1.570744974402371,0.9153894090197263}    
    getDAup_p = {-0.1715673331850213,0.6408173035764454,0.5208749694389621,-3.141032398310408,0.001313208693756291,2.041174777894299}    
    getDAup_q = {-1.493392416889817,0.5116110334764806,-0.6854873850254478,0.3751255593708838,-1.570781654682746,1.177822142993357}    
    getDA_p = {-0.1715543219546257,0.6407608090497057,0.4476953253729113,-3.141560635772582,6.088484341388767e-07,2.041148107526952}    
    getDA_q = {-1.493407725601875,0.4494117363869003,-0.9820783724272522,0.1393190409217349,-1.570766982570596,1.17783314707747}    
    guodu_p = {-0.3968532373273362,0.2494528765124102,0.5744012429833607,3.141069945009356,0.0001670788212137123,-2.579215187952461}    
    guodu_q = {-0.8233117196790272,0.001377784085174067,-1.192606842384261,0.3763286725671959,-1.571056756785562,0.1851070349143108}    

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
    --subscript context end
    
    -- setLabel(5, "homeA")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(homeA_q, homeA_p), 1.39626, 1.0472, 0, 0)
    
    -- setLabel(6, "pzd")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(pzd_q, pzd_p), 1.39626, 1.0472, 0, 0)
    
    -- setLabel(7, "等待：2.00s")
    sleep(2)
    
    -- sched.sync_program_point()
    if (guodu == 00211) then
        -- setLabel(8, "如果 guodu == 00211")
        -- setLabel(9, "get")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(get_q, get_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(10, "getup")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(getup_q, getup_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(11, "homeA")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(homeA_q, homeA_p), 1.39626, 1.0472, 0, 0)
    end
    
    -- setLabel(12, "fget1.lua")
    --subscript context start
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
    --subscript context end
    
    -- setLabel(13, "关节运动")
    -- setLabel(14, "guodu")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(guodu_q, guodu_p), 1.39626, 1.0472, 0, 0)
    
    -- sched.sync_program_point()
    if (get == 123326.23) then
        -- setLabel(15, "如果 get == 123326.23")
        -- setLabel(16, "关节运动")
        -- setLabel(17, "agvUp")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(agvUp_q, agvUp_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(18, "agvPut")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(agvPut_q, agvPut_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(19, "pzd")
        setTcpOffset({0,0,0,0,0,0})
        moveJoint(inverseKinematics(pzd_q, pzd_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(20, "paizhao33.lua")
        --subscript context start
        ------------------------------------------------------------------
        ip = "192.168.192.111" --服务端IP地址
        port = 55000 --串口号
        client_name = "socnbbxkv1" --客户端名称
        rec_key = "camera_send" --接收服务端发送的字符串
        socketOpen(ip, port, client_name) ----与服务端建立通信
        -- 发送拍照数据
        msg_send_00="201,1,-92.32,7.82,-43.3,38.73,-90,-27.95,-103.18,455.55,668.42,179.86,0.057,154.36"
        socketSendLine(msg_send_00, client_name) --发送给服务端字符串
        sleep(3)
        msg_send_01="205,1"
        socketSendLine(msg_send_01, client_name) --发送给服务端字符串
        rec_str = ""
        -- ------------------------------------------------
        --接收服务端发送的字符串后停止循环
        while(rec_str == nil or rec_str == "") 
        do
          socketReadString(rec_key, client_name, "", "", true) 
          --sleep(0.01)
          rec_str = getString(rec_key, "")
          --textmsg(rec_str)
          --sleep(0.001)
        end
        point_up=string.split(rec_str,",")
        point_get=rec_str
        -- textmsg("up point")
        -- textmsg(point_up[7])
        -- textmsg(point_up[12])
        -- textmsg("get point")
        -- textmsg(point_up[15])
        -- textmsg(point_up[20])
         
        --textmsg(point_get)
        -- --------------------------------------------------
        --设置相对移动
        --setTcpOffset({0,0,0.02,0,0,0})
        tableUp={toRad(point_up[7]),toRad(point_up[8]),toRad(point_up[9]),toRad(point_up[10]),toRad(point_up[11]),toRad(point_up[12])}
        tableGet={toRad(point_up[15]),toRad(point_up[16]),toRad(point_up[17]),toRad(point_up[18]),toRad(point_up[19]),toRad(point_up[20])}
        --机械臂移动
        moveJoint(tableUp, 1.0, 1.0, 0, 0)
        moveJoint(tableGet, 1.0, 1.0, 0, 0)
        --moveLine(tableGet, 1.0, 1.0, 0, 0)
        sleep(1.5)
        --抓取
            modbusSetOutputSignal('control', 555)
            sleep(3)
        moveJoint(tableUp, 1.0, 1.0, 0, 0)
        socketClose(client_name)
        --subscript context end
    end
    
    -- setLabel(21, "关节运动")
    -- setLabel(22, "agvUp")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(agvUp_q, agvUp_p), 1.39626, 1.0472, 0, 0)
    
    -- setLabel(23, "直线运动")
    -- setLabel(24, "agvPut")
    setTcpOffset({0,0,0,0,0,0})
    moveLine(agvPut_p, 0.6, 0.2, 0, 0)
    
    -- setLabel(25, "等待：1.00s")
    sleep(1)
    
    -- setLabel(26, "设置 control=811")
    modbusSetOutputSignal('control', 811)
    
    -- setLabel(27, "等待：1.00s")
    sleep(1)
    
    -- setLabel(28, "agvUp")
    setTcpOffset({0,0,0,0,0,0})
    moveLine(agvUp_p, 0.6, 0.2, 0, 0)
    
    -- setLabel(29, "关节运动")
    -- setLabel(30, "homeA")
    setTcpOffset({0,0,0,0,0,0})
    moveJoint(inverseKinematics(homeA_q, homeA_p), 1.39626, 1.0472, 0, 0)
    
    -- sched.sync_program_point()
    if (agvPut == 123.0226) then
        -- setLabel(31, "如果 agvPut == 123.0226")
        -- setLabel(32, "关节运动")
        -- setLabel(33, "getDAup")
        moveJoint(inverseKinematics(getDAup_q, getDAup_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(34, "getDA")
        moveJoint(inverseKinematics(getDA_q, getDA_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(35, "getDAup")
        moveJoint(inverseKinematics(getDAup_q, getDAup_p), 1.39626, 1.0472, 0, 0)
        
        -- setLabel(36, "关节运动")
        -- setLabel(37, "pzd")
        moveJoint(inverseKinematics(pzd_q, pzd_p), 1.39626, 1.0472, 0, 0)
    end


