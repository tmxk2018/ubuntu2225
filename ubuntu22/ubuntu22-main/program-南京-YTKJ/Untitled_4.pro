<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="Untitled_4" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.18" lastSaveIn="0.28.4-rc.18" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,0,0.647,0.6005,0,0"/>
        <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
        <alpha value="0,-1.5707963267949,3.14159265358979,3.14159265358979,-1.5707963267949,1.5707963267949"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="0.001509353297760631,0.6403135241907759,0.7297228798628895,3.123632001741227,-0.002346201164195792,-3.054431490939011"/>
            <JointPositions angles="1.884897540515698,0.1476995679804979,1.688847206043619,-0.01340857838088465,1.572054562301439,0.2291649168767647"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,0,0.647,0.6005,0,0"/>
                <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
                <alpha value="0,-1.570796326794897,3.141592653589793,3.141592653589793,-1.570796326794897,1.570796326794897"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_1">
            <RobotPose pose="0.02976325378272466,0.6396242448322511,0.7297252297805615,3.123628927903564,-0.002346923377281231,-3.098573677247809"/>
            <JointPositions angles="1.840755344853215,0.1476982179424007,1.688842698478403,-0.01340857838088465,1.572054562301439,0.2291649168767647"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,0,0.647,0.6005,0,0"/>
                <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
                <alpha value="0,-1.570796326794897,3.141592653589793,3.141592653589793,-1.570796326794897,1.570796326794897"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_2">
            <RobotPose pose="0.07152545236125535,0.675527516853944,0.7297498234950491,3.123567336162959,-0.002342391030425735,-3.098564981451894"/>
            <JointPositions angles="1.762808195238119,0.08429097863359991,1.633350063092808,-0.005348850940904652,1.573279046855554,0.1512569183664857"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,0,0.647,0.6005,0,0"/>
                <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
                <alpha value="0,-1.570796326794897,3.141592653589793,3.141592653589793,-1.570796326794897,1.570796326794897"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="路点_3">
            <RobotPose pose="0.2197487460273758,0.5958187013480577,0.7297404061673278,3.1236103776645,-0.002362538777882478,-3.098567354723953"/>
            <JointPositions angles="1.535774988516752,0.1560036523160618,1.695721242999434,-0.01511097642138964,1.577589718499751,-0.07578978873585215"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,0,0.647,0.6005,0,0"/>
                <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
                <alpha value="0,-1.570796326794897,3.141592653589793,3.141592653589793,-1.570796326794897,1.570796326794897"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
    </WaypointModel>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="9f7cc316-c5d1-4db7-bb92-1f4b79cc1b79">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="167be8c7-5ec1-489c-a0e4-f59088c58938">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="true"/>
        </datamodel>
        <children>
            <MoveNode title="关节运动" id="833fbef3-7ac4-4d2b-8d0b-75761a1adf9f">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="路点_0" id="29c47490-701e-4f3d-ab22-eb4552613463">
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
                    <MoveNode title="直线运动" id="5a211a32-e1c6-4c65-9e3e-d807b09d7eaf">
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
                            <WaypointNode title="路点_1" id="eead2832-31c6-4225-9cec-64e61e8a2042">
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
                            <MoveNode title="样条曲线" id="571582c6-6802-4542-b904-b05edda40186">
                                <datamodel>
                                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                                    <Feature key="feature" name="基座"/>
                                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                    <Float64 key="toolAcceleration" value="1.2"/>
                                    <Float64 key="toolSpeed" value="0.25"/>
                                    <String key="type" value="MOVE_S"/>
                                    <Bool key="useActiveTCP" value="true"/>
                                    <Bool key="useJoints" value="false"/>
                                </datamodel>
                                <children>
                                    <WaypointNode title="路点_2" id="ecdb39ba-7f8b-4f88-ae5d-cf4bdcd683ef">
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
                            <MoveNode title="样条曲线" id="c07bc547-2d37-4afa-9372-9cfd208339c0">
                                <datamodel>
                                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                                    <Feature key="feature" name="基座"/>
                                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                    <Float64 key="toolAcceleration" value="1.2"/>
                                    <Float64 key="toolSpeed" value="0.25"/>
                                    <String key="type" value="MOVE_S"/>
                                    <Bool key="useActiveTCP" value="true"/>
                                    <Bool key="useJoints" value="false"/>
                                </datamodel>
                                <children>
                                    <WaypointNode title="路点_3" id="464866ff-e57e-4797-8b71-a82d529301a3">
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
                    </MoveNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
