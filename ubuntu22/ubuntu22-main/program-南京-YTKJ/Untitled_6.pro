<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="Untitled_6" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.18" lastSaveIn="0.28.4-rc.18" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000440120697021484,0.648044273376465,0.599825752258301,-5.6922435760498e-05,0.000360965728759766"/>
        <d value="0.1632,0.201325808811188,-2.58088111877441e-05,2.58088111877441e-05,0.102208414077759,0.094"/>
        <alpha value="0,-1.57068814436463,3.14430490334565,3.13903871377046,-1.57035644451645,1.56901295582322"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="-1.044823931917783,0.1297669904613767,0.6304617691742599,-3.14149849812903,5.340827043820798e-06,-1.48405110694441"/>
            <JointPositions angles="3.208541042827416,-0.5367157457501993,1.02666221095958,-0.009297712375065707,1.572065362606217,-0.01792715589204262"/>
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
    <InitVariablesNode title="初始变量" id="e3f6fe81-13ae-4e84-99cf-3a1c1da2b830">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="f9bac684-d6ae-467a-b324-382d263a1c47">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="true"/>
        </datamodel>
        <children>
            <Seeragv title="Seeragv  Move To: LM1 default" id="3c41805c-e7a2-475e-93bd-906ae012fa6c">
                <datamodel>
                    <String key="acc" value=""/>
                    <String key="advanced_point" value="LM1"/>
                    <Bool key="advanced_setting_command" value="false"/>
                    <String key="direction" value="default"/>
                    <Bool key="move_to_command" value="true"/>
                    <Bool key="program_node_is_defined" value="true"/>
                    <Bool key="safe_detect_command" value="false"/>
                    <String key="safe_detect_on_or_off" value=""/>
                    <String key="safe_detect_slow_dist" value=""/>
                    <String key="safe_detect_stop_dist" value=""/>
                    <String key="speed" value=""/>
                    <String key="wacc" value=""/>
                    <String key="wspeed" value=""/>
                </datamodel>
            </Seeragv>
            <MoveNode title="关节运动" id="f1fb0cac-3305-4c5e-a02d-b88fb672e9df">
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
                    <WaypointNode title="路点_0" id="aa8659f9-af7e-45bb-a7d1-01ec8cd47473">
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
                    <Seeragv title="Seeragv  Move To: LM2 default" id="44f11064-e9b7-47f2-9b91-97b8ed9b1785">
                        <datamodel>
                            <String key="acc" value=""/>
                            <String key="advanced_point" value="LM2"/>
                            <Bool key="advanced_setting_command" value="false"/>
                            <String key="direction" value="default"/>
                            <Bool key="move_to_command" value="true"/>
                            <Bool key="program_node_is_defined" value="true"/>
                            <Bool key="safe_detect_command" value="false"/>
                            <String key="safe_detect_on_or_off" value=""/>
                            <String key="safe_detect_slow_dist" value=""/>
                            <String key="safe_detect_stop_dist" value=""/>
                            <String key="speed" value=""/>
                            <String key="wacc" value=""/>
                            <String key="wspeed" value=""/>
                        </datamodel>
                    </Seeragv>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
