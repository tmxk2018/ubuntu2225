<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="AGV" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.29.1-rc.30" lastSaveIn="0.29.1-rc.30" robotSerialNumber="nones" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,0,0.647,0.6005,0,0"/>
        <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
        <alpha value="0,-1.5707963267949,3.14159265358979,3.14159265358979,-1.5707963267949,1.5707963267949"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel/>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="90c38ce1-445d-4b8b-b6d3-01639488cc4a">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="ab123c3d-5f80-4a8b-8a6f-b462b1091984">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <Seeragv title="Seeragv  Move To: LM1 " id="112165c6-2bfc-4115-b3c7-390489489d1c">
                <datamodel>
                    <String key="acc" value=""/>
                    <String key="advanced_point" value="LM1"/>
                    <Bool key="advanced_setting_command" value="false"/>
                    <String key="direction" value=""/>
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
            <Seeragv title="Seeragv  Move To: LM2 " id="8a232892-0c1a-4c5c-a67c-34d5f07a2b94">
                <datamodel>
                    <String key="acc" value=""/>
                    <String key="advanced_point" value="LM2"/>
                    <Bool key="advanced_setting_command" value="false"/>
                    <String key="direction" value=""/>
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
    </MainProgramNode>
</AuboProgram>
