<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="MMM" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="center">
            <RobotPose pose="-0.5439802714619596,-0.01220747993595928,0.4476793938407289,-3.141417243138524,-7.174244404937657e-05,-1.15945459912321"/>
            <JointPositions angles="-0.3327471035391832,-0.1022468878319733,-1.63621045341655,0.03701040289874955,-1.570862351299572,-0.7440888316387051"/>
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
    <InitVariablesNode title="初始变量" id="272b048c-488f-45e5-8ff0-53f6676e8b6c">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="e15f6c0e-a2c3-4d7a-9a70-bacdca2ab7ec">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <MoveNode title="直线运动" id="ce6dd82d-bff8-4f36-969f-ca693bb760ec">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="0.5"/>
                    <Float64 key="toolSpeed" value="0.29999999999999999"/>
                    <String key="type" value="MOVE_L"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                    <DirectionNode title="方向:基座 X+" id="58323895-615f-48f1-b0fe-14ec92bac7d3">
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
                            <Float64 key="toolAcceleration" value="0.5"/>
                            <Float64 key="toolSpeed" value="0.29999999999999999"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：30 mm" id="66b92b61-d2e0-4b96-9c75-f5b9fd1181f9">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.029999999999999999"/>
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
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
                        <datamodel>
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                    <DirectionNode title="方向:基座 X+" id="bddf134e-7ed2-4c7e-aa71-32ffd70971f0">
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
                            <Float64 key="toolAcceleration" value="0.5"/>
                            <Float64 key="toolSpeed" value="0.29999999999999999"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：60 mm" id="2d5ff887-d156-4cae-be89-8e426dd17d66">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.059999999999999998"/>
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
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
                        <datamodel>
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
            <MoveNode title="直线运动" id="ce6dd82d-bff8-4f36-969f-ca693bb760ec">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <Float64 key="toolAcceleration" value="0.5"/>
                    <Float64 key="toolSpeed" value="0.29999999999999999"/>
                    <String key="type" value="MOVE_L"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                    <DirectionNode title="方向:基座 X-" id="58323895-615f-48f1-b0fe-14ec92bac7d3">
                        <datamodel>
                            <String key="directionAxis" value="X-"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="-"/>
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
                            <Float64 key="toolAcceleration" value="0.5"/>
                            <Float64 key="toolSpeed" value="0.29999999999999999"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：30 mm" id="66b92b61-d2e0-4b96-9c75-f5b9fd1181f9">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.029999999999999999"/>
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
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
                        <datamodel>
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                    <DirectionNode title="方向:基座 X-" id="bddf134e-7ed2-4c7e-aa71-32ffd70971f0">
                        <datamodel>
                            <String key="directionAxis" value="X-"/>
                            <Expression key="directionExpression">
                                <String string="{"/>
                                <String string="-"/>
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
                            <Float64 key="toolAcceleration" value="0.5"/>
                            <Float64 key="toolSpeed" value="0.29999999999999999"/>
                            <Bool key="useSharedFeature" value="true"/>
                            <Bool key="useSharedParameter" value="true"/>
                        </datamodel>
                        <children>
                            <UntilNode title="直到固定距离：60 mm" id="2d5ff887-d156-4cae-be89-8e426dd17d66">
                                <datamodel>
                                    <Float64 key="analogValue" value="0"/>
                                    <Float64 key="angularDeceleration" value="1.3962634015954636"/>
                                    <Float64 key="blendRadius" value="0.02"/>
                                    <Float64 key="cartesionDeceleration" value="1.2"/>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Float64 key="distance" value="0.059999999999999998"/>
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
                    <WaypointNode title="center" id="59c7ab4a-8135-4866-b4bf-b5d493482ff0">
                        <datamodel>
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
                            <Waypoint key="waypoint" name="center"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
