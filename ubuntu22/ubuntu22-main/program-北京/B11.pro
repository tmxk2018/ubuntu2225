<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="B11" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="路点_0">
            <RobotPose pose="-0.6450151429346498,-0.06219385861271837,0.5317009086074977,3.141532074035668,5.506790170043025e-05,-1.229045611280148"/>
            <JointPositions angles="-0.1700859144435328,0.181634806819703,-1.113341393092991,0.2757403396938155,-1.570814666935084,-0.5118366323579299"/>
            <TcpOffset pose="0,0.1,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-6.610000127693638e-05,-0.0002092000067932531"/>
                <d value="0.122,0.1215375999989046,-3.759999890462495e-05,3.759999890462495e-05,0.1027149000065401,0.094"/>
                <alpha value="0,-1.570297166765902,3.145133923627906,3.145228173705288,-1.570422826803059,1.571258836806754"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
    </WaypointModel>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="8b29837f-eb63-4d0d-8800-be588b2a659b">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="9742b12e-7b49-4e8d-bf82-8e5faf80d5d9">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <MoveNode title="直线运动" id="4c48cd0f-c469-42f8-8fe6-f63b63102054">
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
                    <WaypointNode title="路点_0" id="f5aa6fd7-51c5-4951-9a01-82ed13a16b47">
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
                            <String key="variableType" value="VARIABLE_POSE"/>
                            <Waypoint key="waypoint" name="路点_0"/>
                        </datamodel>
                    </WaypointNode>
                    <DirectionNode title="方向:基座 X+" id="49620a9c-4cd0-4ac8-8672-9797cdcda0d4">
                        <datamodel>
                            <String key="directionAxis" value="X+"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="1"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string="}"/>
                            </Expression>
                            <String key="directionType" value="AXIS"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="max_distance" value="0.10000000000000001"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：20 mm" id="c6bb2e9d-fa11-4b87-9c9d-7b5629fb1581">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.02"/>
                                    <String key="ioInputSelection" value="DIGITAL"/>
                                    <Bool key="moveToContactPoint" value="true"/>
                                    <String key="type" value="DISTANCE"/>
                                    <Bool key="useBlend" value="false"/>
                                    <Bool key="useExpression" value="false"/>
                                    <Bool key="useSharedDec" value="true"/>
                                </datamodel>
                            </UntilNode>
                        </children>
                    </DirectionNode>
                    <DirectionNode title="方向:基座 Y+" id="49620a9c-4cd0-4ac8-8672-9797cdcda0d4">
                        <datamodel>
                            <String key="directionAxis" value="Y+"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="1"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string="}"/>
                            </Expression>
                            <String key="directionType" value="AXIS"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="max_distance" value="0.10000000000000001"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：20 mm" id="c6bb2e9d-fa11-4b87-9c9d-7b5629fb1581">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.02"/>
                                    <String key="ioInputSelection" value="DIGITAL"/>
                                    <Bool key="moveToContactPoint" value="true"/>
                                    <String key="type" value="DISTANCE"/>
                                    <Bool key="useBlend" value="false"/>
                                    <Bool key="useExpression" value="false"/>
                                    <Bool key="useSharedDec" value="true"/>
                                </datamodel>
                            </UntilNode>
                        </children>
                    </DirectionNode>
                    <DirectionNode title="方向:基座 X+" id="49620a9c-4cd0-4ac8-8672-9797cdcda0d4">
                        <datamodel>
                            <String key="directionAxis" value="X+"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="1"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string="}"/>
                            </Expression>
                            <String key="directionType" value="AXIS"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="max_distance" value="0.10000000000000001"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：20 mm" id="c6bb2e9d-fa11-4b87-9c9d-7b5629fb1581">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.02"/>
                                    <String key="ioInputSelection" value="DIGITAL"/>
                                    <Bool key="moveToContactPoint" value="true"/>
                                    <String key="type" value="DISTANCE"/>
                                    <Bool key="useBlend" value="false"/>
                                    <Bool key="useExpression" value="false"/>
                                    <Bool key="useSharedDec" value="true"/>
                                </datamodel>
                            </UntilNode>
                        </children>
                    </DirectionNode>
                    <DirectionNode title="方向:基座 Y+" id="49620a9c-4cd0-4ac8-8672-9797cdcda0d4">
                        <datamodel>
                            <String key="directionAxis" value="Y+"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="1"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string=","/>
                                <String string="0"/>
                                <String string="."/>
                                <String string="0"/>
                                <String string="}"/>
                            </Expression>
                            <String key="directionType" value="AXIS"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="max_distance" value="0.10000000000000001"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：20 mm" id="c6bb2e9d-fa11-4b87-9c9d-7b5629fb1581">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.02"/>
                                    <String key="ioInputSelection" value="DIGITAL"/>
                                    <Bool key="moveToContactPoint" value="true"/>
                                    <String key="type" value="DISTANCE"/>
                                    <Bool key="useBlend" value="false"/>
                                    <Bool key="useExpression" value="false"/>
                                    <Bool key="useSharedDec" value="true"/>
                                </datamodel>
                            </UntilNode>
                        </children>
                    </DirectionNode>
                    <WaypointNode title="路点_0" id="f5aa6fd7-51c5-4951-9a01-82ed13a16b47">
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
                            <String key="variableType" value="VARIABLE_POSE"/>
                            <Waypoint key="waypoint" name="路点_0"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
