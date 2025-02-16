<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="Untitled_1" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.12" lastSaveIn="0.28.4-rc.12" robotSerialNumber="AN1138362EM30028" crcValue="225635">
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
    <InitVariablesNode title="初始变量" id="bd1b862d-0c49-447e-bd4c-050c438d7b63">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="12aa524b-e130-4a21-b66f-6b6a2d2059f9">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="true"/>
        </datamodel>
        <children>
            <Seeragv title="Seeragv  Move To: LM2 forward" id="3de7a4c5-5fac-4080-b0ff-29d53a594a23">
                <datamodel>
                    <String key="acc" value=""/>
                    <String key="advanced_point" value="LM2"/>
                    <Bool key="advanced_setting_command" value="false"/>
                    <String key="direction" value="forward"/>
                    <Expression key="expression">
                        <String string="agv.robot_status_task_req()==&quot;COMPLETED&quot;"/>
                    </Expression>
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
