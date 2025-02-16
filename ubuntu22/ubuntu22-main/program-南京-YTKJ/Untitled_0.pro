<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="Untitled_0" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.28.4-rc.12" lastSaveIn="0.28.4-rc.12" robotSerialNumber="AN1138362EM30028" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,0,0.647,0.6005,0,0"/>
        <d value="0.1632,0.2013,0,0,0.1025,0.094"/>
        <alpha value="0,-1.5707963267949,3.14159265358979,3.14159265358979,-1.5707963267949,1.5707963267949"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="-0.555565496662081,0.04286772005785107,0.4076194415773485,-0.3658381400624683,-0.0876499932648933,1.88619659788847"/>
            <JointPositions angles="-2.868309841736294,-0.004864187264028133,2.426915934663329,0.498859327468042,-1.664385017803562,0.004942489473662779"/>
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
            <RobotPose pose="-0.3117191304481773,-0.4618672440769553,0.4076190407410075,-0.2234410048078111,-0.3046423657347274,2.242494657748421"/>
            <JointPositions angles="-1.814193345291807,-0.004864187264028133,2.426917061554633,0.4988606775061391,-1.664383667765465,-0.7110920665303631"/>
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
    <InitVariablesNode title="初始变量" id="fb2b4994-6f2b-49ad-835b-465213c28752">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="60fa19ca-56d3-4cd4-95d8-ba0b965fd13e">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="true"/>
        </datamodel>
        <children>
            <MoveNode title="关节运动" id="b03bbeb3-f503-4c36-ad33-9dd80f09264c">
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
                    <WaypointNode title="路点_1" id="7f51eb3e-1821-42cf-be56-e6368856a00a">
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
                    <WaypointNode title="路点_0" id="c4cb8f5d-dc1b-4224-a20a-3da0b0501860">
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
        </children>
    </MainProgramNode>
</AuboProgram>
