--- Auto generated by 'aubo_scope' v0.28.4-hotfix.12 2024-08-06 09:23:12
--- DO NOT MODIFY IT!
local app = {}
local aubo = require('aubo')
local sched = sched or aubo.sched
local math = aubo.math or math

local sleep = sched.sleep
local thread = sched.thread
local sync = sched.sync
local run = sched.run
local kill = sched.kill
local halt = sched.halt

app.PRIORITY = 1000 -- set the app priority, which determines app execution order
app.VERSION = "0.1"
app.VENDOR = "Aubo Robotics"

function p_fei()
    local _ENV = sched.select_robot(1)
    setCollisionStopType(1)
    setCollisionLevel(6)
    setFreedriveDamp({0.5,0.5,0.5,0.5,0.5,0.5})
    setHomePosition({0,-0.2617993877991494,1.74532925199433,0.4363323129985824,1.570796326794897,0}    )
    modbusDeleteAllSignals()
    setDigitalInputActionDefault()
    setDigitalOutputRunstateDefault()
    setPayload(0, {0,0,0}, {0,0,0}, {0,0,0,0,0,0,0,0,0})
    local agv =sched.jsonrpc.proxy('http://127.0.0.1:8989/jsonrpc')
    sleep(0)
    setTcpOffset({0,0,0,0,0,0})
    setToolVoltageOutputDomain(0)
    setToolIoInput(0, true)
    setToolIoInput(1, true)
    setToolIoInput(2, true)
    setToolIoInput(3, true)
    setPlanContext(sched.current_thread_id(), 1, "初始变量")
    u57fau5ea7 = {0,0,0,0,0,0}
    u5de5u5177 = {0,0,0,0,0,0}
    u8defu70b9_0_p = {-0.5625801746559229,-0.4334720296005767,0.5002323556614092,-0.2281327882383082,0.2332876215176975,2.390396874007458}    
    u8defu70b9_0_q = {-2.163918014282082,-0.1346933009525636,2.110640367435002,0.4815788398245338,-1.307328291907671,-0.1094921397930818}    
    u8defu70b9_1_p = {-0.2020375929311237,-0.3139488597901418,0.351714771562895,0.006893808695220338,-0.110540660662788,-2.410895564220344}    
    u8defu70b9_1_q = {-1.597595933061403,-0.02035722446691096,2.761132738346332,1.2932500946306,-1.645743691758128,0.7563412934325087}    
    u8defu70b9_2_p = {-0.7102033063468146,0.003003820597548921,0.5002071984501127,-0.2281544214027244,0.2332435784531205,1.729711941735411}    
    u8defu70b9_2_q = {-2.824652309750687,-0.1347189516764095,2.110656143913261,0.4815801898626309,-1.307378243317265,-0.1094448884596815}    
    u8defu70b9_3_p = {-0.6381142517236805,0.02683078918897445,0.3853717942741987,-0.4381122556206673,0.1951357457823278,1.684986948040021}    
    u8defu70b9_3_q = {-2.824646909598298,-0.1347257018668952,2.319294434435272,0.4815828899388252,-1.3073620428601,-0.1094300380406129}    
    u8defu70b9_14_p = {}    
    u8defu70b9_14_q = {}    
    u8defu70b9_21_p = {}    
    u8defu70b9_21_q = {}    
    u8defu70b9_39_p = {-0.4735220012514679,-0.2583638639936886,0.4022111485245348,-0.4099616510617876,0.2007459907920325,2.460145079653453}    
    u8defu70b9_39_q = {-2.224861434063585,0.04998111043265321,2.474105634919343,0.4431257047034365,-1.372224623237627,0.05196026628307376}    
    u8defu70b9_5_p = {-0.6140532391742851,-0.3361038425432167,0.09757303276725346,-0.4185445069028859,0.3996084261581254,2.611193216781832}    
    u8defu70b9_5_q = {-2.31409895228514,-0.7024315721371517,2.254378733963691,0.8775747145564959,-1.304933324323328,0.3636665124195332}    
    u8defu70b9_40_p = {-0.5096647012767229,-0.2892267290138005,0.129821238333925,-0.5459974701286501,0.5208913499349583,2.431734321638629}    
    u8defu70b9_40_q = {-2.195473804764844,-0.5590764267532795,2.486716675505002,0.9034630451074267,-1.082123036769844,0.2049087823852872}    
    u8defu70b9_6_p = {-0.2020381626194705,-0.3139493554303178,0.3517146946792907,0.006894722983422022,-0.1105395138955191,-2.410898245644826}    
    u8defu70b9_6_q = {-1.5975972830995,-0.02035857450500811,2.761131611455027,1.2932500946306,-1.645742341720031,0.7563399433944116}    
    u8defu70b9_41_p = {-0.4735257013504134,-0.2583670018251633,0.4022077139968796,-0.4099681507644881,0.2007794302642338,2.460159296414067}    
    u8defu70b9_41_q = {-2.224858733987391,0.04997166016597316,2.474101127354126,0.4431203045510479,-1.372198972513781,0.05198591700691959}    
    u8defu70b9_7_p = {-0.6953100960105614,-0.2479075763264923,0.4486115641136668,-0.2653523019236692,0.276536928447554,2.371801062947426}    
    u8defu70b9_7_q = {-2.495583223646793,-0.2106410441457822,2.100064492544786,0.4301302379802795,-1.346459146153537,0.2233975541257439}    
    u8defu70b9_42_p = {-0.4735178748857922,-0.4181733666792931,0.4022110204352146,-0.4099570155960855,0.2007162881148009,2.460131944434004}    
    u8defu70b9_42_q = {-2.055091443270894,-0.1051153162821244,2.32073460152208,0.4815653394435623,-1.30739039366014,-0.1093868368215041}    
    u8defu70b9_8_p = {-0.9534726738580291,-0.3118310979691161,0.9408880240317284,-0.3051697351291276,0.1590214671693363,2.337717723656922}    
    u8defu70b9_8_q = {-2.617397161152554,-0.4275935163957364,0.9198757371879592,-0.556572106083068,-1.494316668591401,0.2788193180899079}    
    u8defu70b9_9_p = {-0.9638805709313177,-0.5533638554541153,0.926977053571588,-0.2428774736636151,0.1246732009933815,2.384917932905984}    
    u8defu70b9_9_q = {-2.430667991783476,-0.6630293602337586,0.5887747879611579,-0.5727158616487766,-1.474194350753394,0.1298912154410043}    
    u8defu70b9_10_p = {-0.9839990834425412,-0.0794208164193267,0.9380930321162326,-0.2024813063446639,0.3087601687286695,2.024148475065962}    
    u8defu70b9_10_q = {-2.830919186597653,-0.3965682908851534,0.9816282537685619,-0.4435442165135527,-1.299483220525137,0.2071066444074459}    
    u8defu70b9_11_p = {-0.9141146578580878,0.4935257029252632,0.6792950314207765,-0.2773917720031569,0.4072822055973438,2.055975630430522}    
    u8defu70b9_11_q = {-3.435672802329874,-0.4668418239560544,1.268768046325973,-0.3157806611136553,-1.489561834413242,0.8546875186955276}    
    u8defu70b9_16_p = {-0.7879316659358543,0.4921870170321055,0.4437162692011618,-0.08780390676235648,0.2831177850921386,2.205978020796832}    
    u8defu70b9_16_q = {-3.474323043013155,-0.4781173421434435,1.728920587713409,0.3545375548066111,-1.483159953756561,0.9894348211719772}    
    u8defu70b9_12_p = {-0.7879179430776663,-0.4306359078984478,0.4437171205731623,-0.08773896107702119,0.2831789153733241,2.205919909431734}    
    u8defu70b9_12_q = {-2.386154535644277,-0.4762421392265034,1.780389094251592,0.6327885068576192,-1.278807387067299,-0.1038260298993471}    
    u8defu70b9_13_p = {-0.7136842856742841,-0.4306411036582891,0.2349292009882993,-0.08774502696741214,0.2832321508848732,2.205922752598924}    
    u8defu70b9_13_q = {-2.322794547668876,-0.6694744421095483,1.959943447102682,1.024763968136271,-1.277040187198131,-0.1703275565268136}    
    u8defu70b9_20_p = {-0.7136837676365956,0.5220613765376974,0.2349303966245277,-0.08770821446046692,0.28325447220277,2.20591599238813}    
    u8defu70b9_20_q = {-3.537800484303008,-0.6671847774967835,1.884445110393059,0.6943637444685887,-1.501821530373453,1.049897627390896}    
    u8defu70b9_15_p = {-0.7136908346702011,0.5220665010696681,-0.04552577217480823,-0.08767248064501335,0.2832574920035419,2.205916405358867}    
    u8defu70b9_15_q = {-3.537801834341105,-1.077021242800718,1.787511047294337,1.007272874549608,-1.503307922318414,1.049984029829113}    
    u8defu70b9_17_p = {-0.7136969842582899,-0.5093241982211808,-0.04552175945517491,-0.08765979325611105,0.283278229319223,2.205905818990431}    
    u8defu70b9_17_q = {-2.259635715369951,-1.12174665492117,1.751860713993658,1.28802679723273,-1.276720228169107,-0.2356288992859145}    
    u8defu70b9_18_p = {-0.7136986414508066,-0.5093268602254593,0.4382157696212016,-0.08767010825479733,0.2832892264117121,2.205910477097321}    
    u8defu70b9_18_q = {-2.259718067693878,-0.4632588228462208,1.822204649877724,0.699981252990826,-1.274217257536993,-0.235977209114979}    
    u8defu70b9_19_p = {-0.202037605382293,-0.3139493773528128,0.3517151159841908,0.006894634584901686,-0.110541432732133,-2.410895655269547}    
    u8defu70b9_19_q = {-1.597595933061403,-0.02035722446691096,2.761131611455027,1.2932500946306,-1.645743691758128,0.7563412934325087}    
    u8defu70b9_22_p = {-0.7869070557968008,0.179210764667402,0.3391070307246471,0.05139252469484198,0.07762336902681788,2.691830316962448}    
    u8defu70b9_22_q = {-3.105475084376764,-0.505678369896742,1.993714125707903,0.8860529538065922,-1.48859655717378,1.080625844520106}    
    u8defu70b9_23_p = {-0.9118230607693828,0.1882391975616654,1.044954439725918,-0.1446190043151937,0.4192877509861647,2.642077585360822}    
    u8defu70b9_23_q = {-3.120420006112204,-0.348242327159605,0.8279461983713312,-0.8288531896684829,-1.493270389066111,1.097188111895931}    
    u8defu70b9_24_p = {-0.8391282126337217,0.7360668255198476,0.9818093394559935,-0.1962199423054269,0.3069296514562279,2.493962779029984}    
    u8defu70b9_24_q = {-3.694595258943999,-0.7793432425317346,0.2640283787989201,-0.8490808104780675,-1.737069718915971,1.479587752951505}    
    u8defu70b9_25_p = {-0.7603876839092232,0.7360633588660904,0.5295699257553527,-0.196200473073802,0.3069299701850437,2.493981126999285}    
    u8defu70b9_25_q = {-3.736921653365817,-0.5911047305700442,1.369744268532975,0.07503106732525437,-1.749047256913878,1.518097589672682}    
    u8defu70b9_26_p = {-0.7603849384891305,-0.6751246140949282,0.5295740291890562,-0.1962018436301222,0.30693619307348,2.494004427109862}    
    u8defu70b9_26_q = {-2.189202877803587,-0.5369587526076862,1.479648850543405,0.2519508598804469,-1.262432774986978,0.02831569904960479}    
    u8defu70b9_27_p = {-0.8791636335492532,-0.4654131257859382,0.7462490554350856,-0.1961299533518795,0.3070112014895831,2.494074277819028}    
    u8defu70b9_27_q = {-2.428263573932454,-0.3984529440687735,1.29888421643157,-0.1347797033907812,-1.316576052873142,0.2715750136606059}    
    u8defu70b9_28_p = {-0.8791638519628934,0.01832984316841571,0.7462488578916483,-0.196123683400422,0.3070161114669361,2.494087005497934}    
    u8defu70b9_28_q = {-2.922164211469668,-0.2095326628680228,1.535482933994182,-0.1729655309686429,-1.467772219525256,0.7500015145282966}    
    u8defu70b9_29_p = {-0.8791337746303668,0.01833923593138073,0.8475577041167721,-0.1960188268005735,0.3069695022850504,2.494162384697387}    
    u8defu70b9_29_q = {-2.922094009488616,-0.1951952582762996,1.383172305314202,-0.3395480818139649,-1.467805970477685,0.7504051759193442}    
    u8defu70b9_30_p = {-0.8791282661552008,-0.4303050914844812,0.847562160399185,-0.1960083296243245,0.3069647070947204,2.494177330530548}    
    u8defu70b9_30_q = {-2.456818229725254,-0.3631345974092565,1.177996951770096,-0.2979723085741618,-1.3241254659124,0.300472579130082}    
    u8defu70b9_31_p = {-0.8791083280812848,-0.4303013684270252,0.9924803138656537,-0.1959709457120853,0.306962825415489,2.494208673608544}    
    u8defu70b9_31_q = {-2.456480720200967,-0.4049128763636319,0.8735627583666377,-0.5606735218222069,-1.324426524408064,0.300799288349592}    
    u8defu70b9_32_p = {-0.9451020569070325,0.0552321339030906,0.9924828272973071,-0.1959617222514039,0.3069607722965105,2.494233911514306}    
    u8defu70b9_32_q = {-2.978637655111511,-0.3439208552106308,0.945627457272266,-0.6332178189725126,-1.488005240487229,0.8044404507577361}    
    u8defu70b9_33_p = {-0.6390519860338123,0.05524837579624638,0.2648022119993949,-0.1959341894991724,0.3071424988033531,2.49426512893787}    
    u8defu70b9_33_q = {-2.893508302819581,-0.3854561273075193,2.355575826866322,0.8262098150742649,-1.459113075170142,0.7207232383154245}    
    u8defu70b9_34_p = {-0.6556878277733025,-0.6759981412303209,0.2648000289520522,-0.1959239767873741,0.3072176737963551,2.49427711593142}    
    u8defu70b9_34_q = {-2.094576007498213,-0.701312390554615,1.755962598341061,0.7235569682813404,-1.246168866030623,-0.07027353307090102}    
    u8defu70b9_35_p = {-0.6556898741910688,0.8148454306820727,0.2648026662580944,-0.1959166369576326,0.3072106159810121,2.494281685853317}    
    u8defu70b9_35_q = {-3.862326692209995,-0.8016998734205234,1.516635676930904,0.456206223826714,-1.787334337349026,1.639769773178243}    
    u8defu70b9_36_p = {-0.6993363092277948,0.8148527444554975,0.06680270137371733,-0.1958940080376435,0.3072091850588174,2.494287221814149}    
    u8defu70b9_36_q = {-3.834436255160992,-1.05711223098206,1.422028644375421,0.6112607993604801,-1.779938828652843,1.612524654339677}    
    u8defu70b9_37_p = {-0.745697707194759,-0.6444911989604214,0.06679236912525137,-0.1958943989829478,0.3072952689107268,2.494265699435217}    
    u8defu70b9_37_q = {-2.195350951298004,-0.9898047316105961,1.630331121288771,0.8539962991897873,-1.265143651486053,0.03422076568653486}    
    u8defu70b9_38_p = {-0.2020377319101626,-0.3139493738078342,0.3517151250856473,0.006895560048443567,-0.1105404508211117,-2.410895646035031}    
    u8defu70b9_38_q = {-1.597595933061403,-0.02035722446691096,2.761131611455027,1.2932500946306,-1.645742341720031,0.7563412934325087}    
    
    
    function str_cat(str1, str2)
        return tostring(str1) .. tostring(str2)
    end
    
    local function calculate_point_to_move_towards(feature, direction, position_distance)
        local posDir={direction[1], direction[2], direction[3]}
        if (math.norm(posDir) < 1e-6) then
            return getTargetTcpPose()
        end
        local direction_vector_normalized=math.normalize(posDir)
        local displacement_pose={direction_vector_normalized[1] * position_distance,direction_vector_normalized[2] * position_distance,direction_vector_normalized[3] * position_distance,0,0,0}

        local wanted_displacement_in_base_frame=poseSub(poseTrans(feature, displacement_pose), feature)
        return poseAdd(getTargetTcpPose(), wanted_displacement_in_base_frame)
    end
    setPlanContext(sched.current_thread_id(), 2, "机器人编程")
    setPlanContext(sched.current_thread_id(), 3, "关节运动")
    setPlanContext(sched.current_thread_id(), 4, "路点_1")
    moveJoint(inverseKinematics(u8defu70b9_1_q, u8defu70b9_1_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 5, "Seeragv  Move To: LM1 forward")
    function waitForMotionComplete()
      sleep(0)
    end
    waitForMotionComplete()
    agv.robot_task_gotarget_req("LM1",-2147483648,-2147483648,-2147483648,-2147483648,"forward")
    while true do
        if (agv.robot_status_task_req()=="COMPLETED") then
            print("Navigation has completed.")
            break
        else
            sleep(0.1)
            print("Navigation is running...")
        end
    end
    
    setPlanContext(sched.current_thread_id(), 6, "Seeragv  Move To: LM2 forward")
    function waitForMotionComplete()
      sleep(0)
    end
    waitForMotionComplete()
    agv.robot_task_gotarget_req("LM2",-2147483648,-2147483648,-2147483648,-2147483648,"forward")
    while true do
        if (agv.robot_status_task_req()=="COMPLETED") then
            print("Navigation has completed.")
            break
        else
            sleep(0.1)
            print("Navigation is running...")
        end
    end
    
    setPlanContext(sched.current_thread_id(), 7, "关节运动")
    setPlanContext(sched.current_thread_id(), 8, "路点_0")
    moveJoint(inverseKinematics(u8defu70b9_0_q, u8defu70b9_0_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 9, "直线运动")
    setPlanContext(sched.current_thread_id(), 10, "路点_2")
    moveLine(u8defu70b9_2_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 11, "直线运动")
    setPlanContext(sched.current_thread_id(), 12, "路点_3")
    moveLine(u8defu70b9_3_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 13, "直线运动")
    setPlanContext(sched.current_thread_id(), 14, "直线运动")
    setPlanContext(sched.current_thread_id(), 15, "路点_39")
    moveLine(u8defu70b9_39_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 16, "直线运动")
    setPlanContext(sched.current_thread_id(), 17, "路点_40")
    moveLine(u8defu70b9_40_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 18, "直线运动")
    setPlanContext(sched.current_thread_id(), 19, "路点_41")
    moveLine(u8defu70b9_41_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 20, "直线运动")
    setPlanContext(sched.current_thread_id(), 21, "路点_42")
    moveLine(u8defu70b9_42_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 22, "直线运动")
    setPlanContext(sched.current_thread_id(), 23, "路点_5")
    moveLine(u8defu70b9_5_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 24, "关节运动")
    setPlanContext(sched.current_thread_id(), 25, "路点_6")
    moveJoint(inverseKinematics(u8defu70b9_6_q, u8defu70b9_6_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 26, "Seeragv  Move To: LM3 forward")
    function waitForMotionComplete()
      sleep(0)
    end
    waitForMotionComplete()
    agv.robot_task_gotarget_req("LM3",-2147483648,-2147483648,-2147483648,-2147483648,"forward")
    while true do
        if (agv.robot_status_task_req()=="COMPLETED") then
            print("Navigation has completed.")
            break
        else
            sleep(0.1)
            print("Navigation is running...")
        end
    end
    
    setPlanContext(sched.current_thread_id(), 27, "直线运动")
    setPlanContext(sched.current_thread_id(), 28, "路点_7")
    moveLine(u8defu70b9_7_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 29, "直线运动")
    setPlanContext(sched.current_thread_id(), 30, "路点_8")
    moveLine(u8defu70b9_8_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 31, "直线运动")
    setPlanContext(sched.current_thread_id(), 32, "路点_9")
    moveLine(u8defu70b9_9_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 33, "直线运动")
    setPlanContext(sched.current_thread_id(), 34, "路点_10")
    moveLine(u8defu70b9_10_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 35, "直线运动")
    setPlanContext(sched.current_thread_id(), 36, "路点_11")
    moveLine(u8defu70b9_11_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 37, "关节运动")
    setPlanContext(sched.current_thread_id(), 38, "路点_16")
    moveJoint(inverseKinematics(u8defu70b9_16_q, u8defu70b9_16_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 39, "直线运动")
    setPlanContext(sched.current_thread_id(), 40, "路点_12")
    moveLine(u8defu70b9_12_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 41, "直线运动")
    setPlanContext(sched.current_thread_id(), 42, "路点_13")
    moveLine(u8defu70b9_13_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 43, "直线运动")
    setPlanContext(sched.current_thread_id(), 44, "路点_20")
    moveLine(u8defu70b9_20_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 45, "直线运动")
    setPlanContext(sched.current_thread_id(), 46, "路点_15")
    moveLine(u8defu70b9_15_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 47, "直线运动")
    setPlanContext(sched.current_thread_id(), 48, "路点_17")
    moveLine(u8defu70b9_17_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 49, "直线运动")
    setPlanContext(sched.current_thread_id(), 50, "路点_18")
    moveLine(u8defu70b9_18_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 51, "关节运动")
    setPlanContext(sched.current_thread_id(), 52, "路点_19")
    moveJoint(inverseKinematics(u8defu70b9_19_q, u8defu70b9_19_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 53, "Seeragv  Move To: LM4 forward")
    function waitForMotionComplete()
      sleep(0)
    end
    waitForMotionComplete()
    agv.robot_task_gotarget_req("LM4",-2147483648,-2147483648,-2147483648,-2147483648,"forward")
    while true do
        if (agv.robot_status_task_req()=="COMPLETED") then
            print("Navigation has completed.")
            break
        else
            sleep(0.1)
            print("Navigation is running...")
        end
    end
    
    setPlanContext(sched.current_thread_id(), 54, "关节运动")
    setPlanContext(sched.current_thread_id(), 55, "路点_22")
    moveJoint(inverseKinematics(u8defu70b9_22_q, u8defu70b9_22_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 56, "直线运动")
    setPlanContext(sched.current_thread_id(), 57, "路点_23")
    moveLine(u8defu70b9_23_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 58, "直线运动")
    setPlanContext(sched.current_thread_id(), 59, "路点_24")
    moveLine(u8defu70b9_24_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 60, "直线运动")
    setPlanContext(sched.current_thread_id(), 61, "路点_25")
    moveLine(u8defu70b9_25_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 62, "直线运动")
    setPlanContext(sched.current_thread_id(), 63, "路点_26")
    moveLine(u8defu70b9_26_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 64, "直线运动")
    setPlanContext(sched.current_thread_id(), 65, "路点_27")
    moveLine(u8defu70b9_27_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 66, "直线运动")
    setPlanContext(sched.current_thread_id(), 67, "路点_28")
    moveLine(u8defu70b9_28_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 68, "直线运动")
    setPlanContext(sched.current_thread_id(), 69, "路点_29")
    moveLine(u8defu70b9_29_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 70, "直线运动")
    setPlanContext(sched.current_thread_id(), 71, "路点_30")
    moveLine(u8defu70b9_30_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 72, "直线运动")
    setPlanContext(sched.current_thread_id(), 73, "路点_31")
    moveLine(u8defu70b9_31_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 74, "直线运动")
    setPlanContext(sched.current_thread_id(), 75, "路点_32")
    moveLine(u8defu70b9_32_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 76, "直线运动")
    setPlanContext(sched.current_thread_id(), 77, "路点_33")
    moveLine(u8defu70b9_33_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 78, "直线运动")
    setPlanContext(sched.current_thread_id(), 79, "路点_34")
    moveLine(u8defu70b9_34_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 80, "直线运动")
    setPlanContext(sched.current_thread_id(), 81, "路点_35")
    moveLine(u8defu70b9_35_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 82, "直线运动")
    setPlanContext(sched.current_thread_id(), 83, "路点_36")
    moveLine(u8defu70b9_36_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 84, "直线运动")
    setPlanContext(sched.current_thread_id(), 85, "路点_37")
    moveLine(u8defu70b9_37_p, 1.2, 0.25, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 86, "关节运动")
    setPlanContext(sched.current_thread_id(), 87, "路点_38")
    moveJoint(inverseKinematics(u8defu70b9_38_q, u8defu70b9_38_p), 1.39626, 1.0472, 0, 0)
    
    setPlanContext(sched.current_thread_id(), 88, "Seeragv  Move To: LM1 backward")
    function waitForMotionComplete()
      sleep(0)
    end
    waitForMotionComplete()
    agv.robot_task_gotarget_req("LM1",-2147483648,-2147483648,-2147483648,-2147483648,"backward")
    while true do
        if (agv.robot_status_task_req()=="COMPLETED") then
            print("Navigation has completed.")
            break
        else
            sleep(0.1)
            print("Navigation is running...")
        end
    end
end

function app:start(api)
  --
  self.api = api
  print("start---")
  p_fei()
end

function app:robot_error_handler(name, err)
  --
  print("An error hanppen to robot "..name)
end

-- return our app object
return app


