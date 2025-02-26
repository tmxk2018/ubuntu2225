<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="agvGooo" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel/>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="4882aeb3-02dc-4e8f-9c40-513e06c1b607">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="b469a590-ff82-4626-8ba8-3aa6d1fd8ff5">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <ScriptNode title="AGVgo1.lua" id="4953c418-a409-4838-9cd3-7126d9c79d9c">
                <datamodel>
                    <Expression key="expression"/>
                    <String key="file_path" value="AGVgo1.lua"/>
                    <Bool key="use_file" value="true"/>
                </datamodel>
            </ScriptNode>
            <ScriptNode title="FbGet815.lua" id="9ddbe506-712a-4e4f-88ee-21ec69d7f1aa">
                <datamodel>
                    <Expression key="expression"/>
                    <String key="file_path" value="FbGet815.lua"/>
                    <Bool key="use_file" value="true"/>
                </datamodel>
            </ScriptNode>
            <ScriptNode title="AGVgo4.lua" id="293f7e8b-7b39-48f9-9cb2-4d66e7c79bda">
                <datamodel>
                    <Expression key="expression"/>
                    <String key="file_path" value="AGVgo4.lua"/>
                    <Bool key="use_file" value="true"/>
                </datamodel>
            </ScriptNode>
            <ScriptNode title="FbPut815.lua" id="5dddee66-f13a-48f9-afb5-8c0d52c5098e">
                <datamodel>
                    <Expression key="expression"/>
                    <String key="file_path" value="FbPut815.lua"/>
                    <Bool key="use_file" value="true"/>
                </datamodel>
            </ScriptNode>
        </children>
    </MainProgramNode>
</AuboProgram>
