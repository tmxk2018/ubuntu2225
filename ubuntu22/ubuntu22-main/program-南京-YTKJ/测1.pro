<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="测1" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.18" lastSaveIn="0.28.4-rc.18" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000440120697021484,0.648044273376465,0.599825752258301,-5.6922435760498e-05,0.000360965728759766"/>
        <d value="0.1632,0.201325808811188,-2.58088111877441e-05,2.58088111877441e-05,0.102208414077759,0.094"/>
        <alpha value="0,-1.57068814436463,3.14430490334565,3.13903871377046,-1.57035644451645,1.56901295582322"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_1">
            <RobotPose pose="-0.1650005657388598,-0.3207256054894199,0.3906724939701645,0.05231069987579405,-0.07155829096692976,-2.377396825968605"/>
            <JointPositions angles="-1.463699154586157,0.1546711647141757,2.759319570237822,1.120665274405353,-1.593981881075335,0.6554866973849868"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004401206970214844,0.6480442733764649,0.5998257522583008,-5.692243576049805e-05,0.0003609657287597656"/>
                <d value="0.1632,0.2013258088111878,-2.580881118774414e-05,2.580881118774414e-05,0.1022084140777588,0.094"/>
                <alpha value="0,-1.570688144364629,3.144304903345652,3.139038713770457,-1.570356444516454,1.569012955823217"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_0">
            <RobotPose pose="-0.1650022397937213,-0.3207281064217494,0.4078136797149502,0.05231743196025924,-0.07154450941892132,-2.377386092239461"/>
            <JointPositions angles="-1.463747755957655,0.2130765128730392,2.74382368791333,1.04676553900551,-1.593637621360562,0.6556487019566446"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004401206970214844,0.6480442733764649,0.5998257522583008,-5.692243576049805e-05,0.0003609657287597656"/>
                <d value="0.1632,0.2013258088111878,-2.580881118774414e-05,2.580881118774414e-05,0.1022084140777588,0.094"/>
                <alpha value="0,-1.570688144364629,3.144304903345652,3.139038713770457,-1.570356444516454,1.569012955823217"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_2">
            <RobotPose pose="-0.1650002539408899,-0.3207259180961516,0.4078148728923973,0.05230962486979716,-0.0715559306168686,-2.377396239290493"/>
            <JointPositions angles="-1.46374505588146,0.2130859631397192,2.743825941695938,1.046758788815024,-1.59365247177963,0.6556365516137703"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004401206970214844,0.6480442733764649,0.5998257522583008,-5.692243576049805e-05,0.0003609657287597656"/>
                <d value="0.1632,0.2013258088111878,-2.580881118774414e-05,2.580881118774414e-05,0.1022084140777588,0.094"/>
                <alpha value="0,-1.570688144364629,3.144304903345652,3.139038713770457,-1.570356444516454,1.569012955823217"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
    </WaypointModel>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="bc7c3463-5f3a-40d5-a13b-033e88cb4662">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="41d899fa-be41-40f8-b039-30d235695fde">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="true"/>
        </datamodel>
        <children>
            <MoveNode title="直线运动" id="6effc172-971a-4c66-b038-6c88bb649575">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_L"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="路点_1" id="61ed0a3b-b826-4350-8f6c-64e490161c9c">
                        <datamodel>
                            <VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
                            <Float64 key="blendRadius" value="0.02"/>
                            <String key="blendType" value="NO_BLEND"/>
                            <Float64 key="cartesianAcceleration" value="1.2"/>
                            <Float64 key="cartesianSpeed" value="0.25"/>
                            <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                            <Float64 key="jointSpeed" value="1.0471975511965976"/>
                            <Float64 key="motionTime" value="0"/>
                            <String key="motionType" value="SHARED"/>
                            <String key="type" value="POSITION"/>
                            <Waypoint key="waypoint" name="路点_1"/>
                        </datamodel>
                    </WaypointNode>
                    <MoveNode title="直线运动" id="d471521b-5a10-43e5-9de4-edd79abbff75">
                        <datamodel>
                            <Float64 key="blendRadius" value="0.025000000000000001"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                            <Float64 key="jointSpeed" value="1.0471975511965976"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <String key="type" value="MOVE_L"/>
                            <Bool key="useActiveTCP" value="true"/>
                            <Bool key="useJoints" value="false"/>
                        </datamodel>
                        <children>
                            <WaypointNode title="路点_0" id="e93f8497-2b9d-425f-bd72-154ccc7fceaf">
                                <datamodel>
                                    <VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <String key="blendType" value="NO_BLEND"/>
                                    <Float64 key="cartesianAcceleration" value="1.2"/>
                                    <Float64 key="cartesianSpeed" value="0.25"/>
                                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                    <Float64 key="motionTime" value="0"/>
                                    <String key="motionType" value="SHARED"/>
                                    <String key="type" value="POSITION"/>
                                    <Waypoint key="waypoint" name="路点_0"/>
                                </datamodel>
                            </WaypointNode>
                            <MoveNode title="直线运动" id="12836b9d-76f5-4b65-b312-9dc96c784b48">
                                <datamodel>
                                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                                    <Feature key="feature" name="基座"/>
                                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                    <Float64 key="toolAcceleration" value="1.2"/>
                                    <Float64 key="toolSpeed" value="0.25"/>
                                    <String key="type" value="MOVE_L"/>
                                    <Bool key="useActiveTCP" value="true"/>
                                    <Bool key="useJoints" value="false"/>
                                </datamodel>
                                <children>
                                    <WaypointNode title="路点_2" id="cb7e2235-a676-4881-b7da-42d353f27808">
                                        <datamodel>
                                            <VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
                                            <Float64 key="blendRadius" value="0.02"/>
                                            <String key="blendType" value="NO_BLEND"/>
                                            <Float64 key="cartesianAcceleration" value="1.2"/>
                                            <Float64 key="cartesianSpeed" value="0.25"/>
                                            <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                            <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                            <Float64 key="motionTime" value="0"/>
                                            <String key="motionType" value="SHARED"/>
                                            <String key="type" value="POSITION"/>
                                            <Waypoint key="waypoint" name="路点_2"/>
                                        </datamodel>
                                    </WaypointNode>
                                </children>
                            </MoveNode>
                        </children>
                    </MoveNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
