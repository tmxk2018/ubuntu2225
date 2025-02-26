<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="CCloseclient" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
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
    <InitVariablesNode title="初始变量" id="08f98c7e-12e3-496f-adb8-1a799e9898ec">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="a698c32f-2672-46d1-bec2-9ad22a456a30">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <ScriptNode title="socketClose(client_name)&#10;" id="06a887a1-157c-496c-9351-6c36bc08dbff">
                <datamodel>
                    <Expression key="expression">
                        <String string="s"/>
                        <String string="o"/>
                        <String string="c"/>
                        <String string="k"/>
                        <String string="e"/>
                        <String string="t"/>
                        <String string="C"/>
                        <String string="l"/>
                        <String string="o"/>
                        <String string="s"/>
                        <String string="e"/>
                        <String string="("/>
                        <String string="c"/>
                        <String string="l"/>
                        <String string="i"/>
                        <String string="e"/>
                        <String string="n"/>
                        <String string="t"/>
                        <String string="_"/>
                        <String string="n"/>
                        <String string="a"/>
                        <String string="m"/>
                        <String string="e"/>
                        <String string=")"/>
                        <String string="&#10;"/>
                    </Expression>
                    <Bool key="use_file" value="false"/>
                </datamodel>
            </ScriptNode>
        </children>
    </MainProgramNode>
</AuboProgram>
