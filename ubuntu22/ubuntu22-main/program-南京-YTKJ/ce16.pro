<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="ce16" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.18" lastSaveIn="0.28.4-rc.18" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000440120697021484,0.648044273376465,0.599825752258301,-5.6922435760498e-05,0.000360965728759766"/>
        <d value="0.1632,0.201325808811188,-2.58088111877441e-05,2.58088111877441e-05,0.102208414077759,0.094"/>
        <alpha value="0,-1.57068814436463,3.14430490334565,3.13903871377046,-1.57035644451645,1.56901295582322"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="0.2013000000000004,0.7030000000000001,0.7162000000000004,3.14159265,0,3.14159265"/>
            <JointPositions angles="1.570796325,0,1.570796325,0,1.570796325,0"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_2">
            <RobotPose pose="0.9218855737091013,-0.4953894191537618,0.5722142467764999,-3.141592565879199,-1.815236925e-07,2.558405131384534"/>
            <JointPositions angles="-0.2995397588951096,-0.5291129471323441,1.134263283049506,0.0926094598127597,1.570791355571978,-1.287136242153473"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_3">
            <RobotPose pose="0.8678498267104469,-0.5784420942479581,0.5722142092570895,-3.141592559372941,-1.886575171e-07,2.530656988720364"/>
            <JointPositions angles="-0.3936753395298522,-0.5228996483387774,1.143847529207363,0.0959494779058262,1.570795185447789,-1.353533635862993"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
    </WaypointModel>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="4977af62-95b6-47d7-9d6e-1718f8d9c971">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="1ab4ea60-6f21-4426-b0ac-e82d990cdbc4">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <MoveNode title="关节运动" id="11376032-20cd-4ced-a069-d1b99d400002">
                <datamodel>
                    <Float64 key="blendRadius" value="0.040000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.20000000000000001"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="路点_0" id="cbdbc6c3-5e00-471f-aadd-d701edb00002">
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
                </children>
            </MoveNode>
            <MoveNode title="关节运动" id="11376032-20cd-4ced-a069-d1b99d400004">
                <datamodel>
                    <Float64 key="blendRadius" value="0.040000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.10000000000000001"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="路点_2" id="cbdbc6c3-5e00-471f-aadd-d701edb00004">
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
            <MoveNode title="关节运动" id="11376032-20cd-4ced-a069-d1b99d400005">
                <datamodel>
                    <Float64 key="blendRadius" value="0.040000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.10000000000000001"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="路点_3" id="cbdbc6c3-5e00-471f-aadd-d701edb00005">
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
                            <Waypoint key="waypoint" name="路点_3"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
