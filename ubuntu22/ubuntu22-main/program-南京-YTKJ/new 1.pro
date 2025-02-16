<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="C3" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.18" lastSaveIn="0.28.4-rc.18" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000440120697021484,0.648044273376465,0.599825752258301,-5.6922435760498e-05,0.000360965728759766"/>
        <d value="0.1632,0.201325808811188,-2.58088111877441e-05,2.58088111877441e-05,0.102208414077759,0.094"/>
        <alpha value="0,-1.57068814436463,3.14430490334565,3.13903871377046,-1.57035644451645,1.56901295582322"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="-0.1323091120745469,1.0464103271162173,0.6309217593746982,-3.1415920614569335,-0.0000007368822551,-3.0548141733686034"/>
            <JointPositions angles="1.8885995803107878,-0.5395352620538874,1.0202253465538367,-0.0110054337760075,1.5708007757590747,0.2310195811393602"/>
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
        <Waypoint name="路点_1">
            <RobotPose pose="-0.1270449564494759,1.0524205895431593,0.6309217583251846,-3.1415920614569335,-0.0000007368822551,-3.0548141733686034"/>
            <JointPositions angles="1.8819873020136275,-0.5493997777450574,1.0048629064457553,-0.0164585375620243,1.5707879157055677,0.2244246555588448"/>
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
            <RobotPose pose="-0.1216926740412435,1.0579994986347399,0.6309217572413772,-3.1415920614569335,-0.0000007368822551,-3.0548141733686034"/>
            <JointPositions angles="1.8754775362458960,-0.5586049966800783,0.9904384799293475,-0.0216803190636131,1.5707881356015188,0.2179147225797684"/>
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
                    <WaypointNode title="路点_0" id="61ed0a3b-b826-4350-8f6c-64e490161c9c">
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
                            <WaypointNode title="路点_1" id="e93f8497-2b9d-425f-bd72-154ccc7fceaf">
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
                                    <WaypointNode title="路点_2" id="cb7e2235-a676-4881-b7da-42d353f27809">
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
