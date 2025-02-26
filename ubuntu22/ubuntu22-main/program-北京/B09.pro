<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="B09" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="home">
            <RobotPose pose="-0.6450191418387743,-0.06218232585696717,0.5316956345659992,3.141540736339179,7.544171546575244e-05,-1.229087809977"/>
            <JointPositions angles="-0.1700950996707674,0.1816378685621145,-1.113350578320226,0.2757256675816654,-1.57083667510331,-0.511803620105592"/>
            <TcpOffset pose="0,0.1,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="up">
            <RobotPose pose="-0.5958792545542568,0.07860655194206609,0.3318276373498187,3.122653804331059,0.02936327508421547,-2.692886576510639"/>
            <JointPositions angles="-0.1952503753236343,0.1857283564238758,-1.648377817759842,-0.2511975640946546,-1.603570157310291,0.9267602959360913"/>
            <TcpOffset pose="0,0.1,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="agvGet">
            <RobotPose pose="-0.5957597698940166,0.07859238700076793,0.2100992297404886,3.123949197645594,0.03108203613306621,-2.692870120793924"/>
            <JointPositions angles="-0.1952656840356918,0.3099738634824617,-1.843242413539628,-0.5681555348462748,-1.603566489282253,0.9267676319921664"/>
            <TcpOffset pose="0,0.1,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
    </WaypointModel>
    <TimerModel/>
    <VariableModel/>
    <SubProgModel/>
    <InitVariablesNode title="初始变量" id="e01a0bc4-b7eb-4200-969c-a2a23a8a42c5">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="068e4544-8fe2-43f8-9e71-67c6843f3332">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
            <Int32 key="startFraction" value="100"/>
        </datamodel>
        <children>
            <WaitNode title="等待：1.00s" id="fe73f2e5-6aeb-42e4-af9d-9899df1a44d1">
                <datamodel>
                    <String key="compareOperator" value="LESS_THAN"/>
                    <Bool key="di_value" value="false"/>
                    <Expression key="expression"/>
                    <Float32 key="floatValue" value="4"/>
                    <Float64 key="timeout" value="0"/>
                    <String key="type" value="TIME"/>
                    <Float64 key="waitTime" value="1"/>
                </datamodel>
            </WaitNode>
            <MoveNode title="关节运动" id="67d7540f-a631-488b-a089-f44c3e8eeb38">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="0.87266462599716477"/>
                    <Float64 key="jointSpeed" value="0.52359877559829882"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <SetNode title="设置 agvGo=1" id="98f8e8aa-b8f8-46f6-b2ab-ca0a7bb44264">
                        <datamodel>
                            <Float64 key="aoValue" value="4"/>
                            <Bool key="boolValue" value="false"/>
                            <Int32 key="collisionLevel" value="-1"/>
                            <Expression key="expression">
                                <String string="1"/>
                            </Expression>
                            <Io key="io" name="agvGo"/>
                            <Float64 key="pulseTime" value="0.5"/>
                            <Bool key="setTcp" value="false"/>
                            <Bool key="syncProgramPointer" value="true"/>
                            <String key="type" value="EXPRESSION_OUTPUT"/>
                        </datamodel>
                    </SetNode>
                    <WaitNode title="等待：2.00s" id="fe73f2e5-6aeb-42e4-af9d-9899df1a44d1">
                        <datamodel>
                            <String key="compareOperator" value="LESS_THAN"/>
                            <Bool key="di_value" value="false"/>
                            <Expression key="expression"/>
                            <Float32 key="floatValue" value="4"/>
                            <Float64 key="timeout" value="0"/>
                            <String key="type" value="TIME"/>
                            <Float64 key="waitTime" value="2"/>
                        </datamodel>
                    </WaitNode>
                    <WaitNode title="等待：agvOver == 4" id="3c9adcef-b864-4d9d-b355-dbdbd6c052f8">
                        <datamodel>
                            <String key="compareOperator" value="LESS_THAN"/>
                            <Bool key="di_value" value="false"/>
                            <Expression key="expression">
                                <Io name="agvOver"/>
                                <String string=" == "/>
                                <String string="4"/>
                            </Expression>
                            <Float32 key="floatValue" value="4"/>
                            <Float64 key="timeout" value="100"/>
                            <String key="type" value="EXPRESSION_INPUT"/>
                            <Float64 key="waitTime" value="0.01"/>
                        </datamodel>
                    </WaitNode>
                    <WaitNode title="等待：1.00s" id="88c464e3-8c25-4194-af42-76195dbdec0e">
                        <datamodel>
                            <String key="compareOperator" value="LESS_THAN"/>
                            <Bool key="di_value" value="false"/>
                            <Expression key="expression"/>
                            <Float32 key="floatValue" value="4"/>
                            <Float64 key="timeout" value="0"/>
                            <String key="type" value="TIME"/>
                            <Float64 key="waitTime" value="1"/>
                        </datamodel>
                    </WaitNode>
                    <WaypointNode title="home" id="af10011f-e666-4eb1-8788-7b249f1c6fad">
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
                            <Waypoint key="waypoint" name="home"/>
                        </datamodel>
                    </WaypointNode>
                    <WaypointNode title="up" id="00ca15be-f0db-4391-9bdf-d4f8a0c7db6e">
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
                            <Waypoint key="waypoint" name="up"/>
                        </datamodel>
                    </WaypointNode>
                    <MoveNode title="直线运动" id="abe6dd17-5d55-4862-ac63-ea545c864ac5">
                        <datamodel>
                            <Float64 key="blendRadius" value="0.025000000000000001"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                            <Float64 key="jointSpeed" value="1.0471975511965976"/>
                            <Float64 key="toolAcceleration" value="0.80000000000000004"/>
                            <Float64 key="toolSpeed" value="0.17999999999999999"/>
                            <String key="type" value="MOVE_L"/>
                            <Bool key="useActiveTCP" value="true"/>
                            <Bool key="useJoints" value="false"/>
                        </datamodel>
                        <children>
                            <WaypointNode title="agvGet" id="05f1a460-54da-4e6c-9d54-36eac417db25">
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
                                    <Waypoint key="waypoint" name="agvGet"/>
                                </datamodel>
                            </WaypointNode>
                            <WaitNode title="等待：0.05s" id="6fbad11d-c11c-4b6a-bbc0-adba497e1e72">
                                <datamodel>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Bool key="di_value" value="false"/>
                                    <Expression key="expression"/>
                                    <Float32 key="floatValue" value="4"/>
                                    <Float64 key="timeout" value="0"/>
                                    <String key="type" value="TIME"/>
                                    <Float64 key="waitTime" value="0.050000000000000003"/>
                                </datamodel>
                            </WaitNode>
                            <SetNode title="设置 control=555" id="f3f53073-fee1-4558-bfc5-98942c015156">
                                <datamodel>
                                    <Float64 key="aoValue" value="4"/>
                                    <Bool key="boolValue" value="false"/>
                                    <Int32 key="collisionLevel" value="-1"/>
                                    <Expression key="expression">
                                        <String string="5"/>
                                        <String string="5"/>
                                        <String string="5"/>
                                    </Expression>
                                    <Io key="io" name="control"/>
                                    <Float64 key="pulseTime" value="0.5"/>
                                    <Bool key="setTcp" value="false"/>
                                    <Bool key="syncProgramPointer" value="true"/>
                                    <String key="type" value="EXPRESSION_OUTPUT"/>
                                </datamodel>
                            </SetNode>
                            <WaitNode title="等待：2.00s" id="0e514b54-29d7-4118-a2e3-89c78c3746ba">
                                <datamodel>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Bool key="di_value" value="false"/>
                                    <Expression key="expression"/>
                                    <Float32 key="floatValue" value="4"/>
                                    <Float64 key="timeout" value="0"/>
                                    <String key="type" value="TIME"/>
                                    <Float64 key="waitTime" value="2"/>
                                </datamodel>
                            </WaitNode>
                            <WaypointNode title="up" id="00ca15be-f0db-4391-9bdf-d4f8a0c7db6e">
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
                                    <Waypoint key="waypoint" name="up"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </MoveNode>
                    <MoveNode title="关节运动" id="e5d9578a-3fe5-4dc8-8eb3-ae3e7297fda1">
                        <datamodel>
                            <Float64 key="blendRadius" value="0.025000000000000001"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="jointAcceleration" value="1.0471975511965976"/>
                            <Float64 key="jointSpeed" value="0.52359877559829882"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <String key="type" value="MOVE_J"/>
                            <Bool key="useActiveTCP" value="true"/>
                            <Bool key="useJoints" value="false"/>
                        </datamodel>
                        <children>
                            <WaypointNode title="home" id="af10011f-e666-4eb1-8788-7b249f1c6fad">
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
                                    <Waypoint key="waypoint" name="home"/>
                                </datamodel>
                            </WaypointNode>
                            <WaitNode title="等待：2.00s" id="fe73f2e5-6aeb-42e4-af9d-9899df1a44d1">
                                <datamodel>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Bool key="di_value" value="false"/>
                                    <Expression key="expression"/>
                                    <Float32 key="floatValue" value="4"/>
                                    <Float64 key="timeout" value="0"/>
                                    <String key="type" value="TIME"/>
                                    <Float64 key="waitTime" value="2"/>
                                </datamodel>
                            </WaitNode>
                            <SetNode title="设置 agvGo=4" id="98f8e8aa-b8f8-46f6-b2ab-ca0a7bb44264">
                                <datamodel>
                                    <Float64 key="aoValue" value="4"/>
                                    <Bool key="boolValue" value="false"/>
                                    <Int32 key="collisionLevel" value="-1"/>
                                    <Expression key="expression">
                                        <String string="4"/>
                                    </Expression>
                                    <Io key="io" name="agvGo"/>
                                    <Float64 key="pulseTime" value="0.5"/>
                                    <Bool key="setTcp" value="false"/>
                                    <Bool key="syncProgramPointer" value="true"/>
                                    <String key="type" value="EXPRESSION_OUTPUT"/>
                                </datamodel>
                            </SetNode>
                        </children>
                    </MoveNode>
                </children>
            </MoveNode>
            <WaitNode title="等待：2.00s" id="fe73f2e5-6aeb-42e4-af9d-9899df1a44d1">
                <datamodel>
                    <String key="compareOperator" value="LESS_THAN"/>
                    <Bool key="di_value" value="false"/>
                    <Expression key="expression"/>
                    <Float32 key="floatValue" value="4"/>
                    <Float64 key="timeout" value="0"/>
                    <String key="type" value="TIME"/>
                    <Float64 key="waitTime" value="2"/>
                </datamodel>
            </WaitNode>
            <MoveNode title="关节运动" id="67d7540f-a631-488b-a089-f44c3e8eeb38">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="0.87266462599716477"/>
                    <Float64 key="jointSpeed" value="0.52359877559829882"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="true"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaitNode title="等待：agvOver == 4" id="3c9adcef-b864-4d9d-b355-dbdbd6c052f8">
                        <datamodel>
                            <String key="compareOperator" value="LESS_THAN"/>
                            <Bool key="di_value" value="false"/>
                            <Expression key="expression">
                                <Io name="agvOver"/>
                                <String string=" == "/>
                                <String string="4"/>
                            </Expression>
                            <Float32 key="floatValue" value="4"/>
                            <Float64 key="timeout" value="100"/>
                            <String key="type" value="EXPRESSION_INPUT"/>
                            <Float64 key="waitTime" value="0.01"/>
                        </datamodel>
                    </WaitNode>
                    <WaitNode title="等待：1.00s" id="88c464e3-8c25-4194-af42-76195dbdec0e">
                        <datamodel>
                            <String key="compareOperator" value="LESS_THAN"/>
                            <Bool key="di_value" value="false"/>
                            <Expression key="expression"/>
                            <Float32 key="floatValue" value="4"/>
                            <Float64 key="timeout" value="0"/>
                            <String key="type" value="TIME"/>
                            <Float64 key="waitTime" value="1"/>
                        </datamodel>
                    </WaitNode>
                    <WaypointNode title="home" id="af10011f-e666-4eb1-8788-7b249f1c6fad">
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
                            <Waypoint key="waypoint" name="home"/>
                        </datamodel>
                    </WaypointNode>
                    <WaypointNode title="up" id="00ca15be-f0db-4391-9bdf-d4f8a0c7db6e">
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
                            <Waypoint key="waypoint" name="up"/>
                        </datamodel>
                    </WaypointNode>
                    <MoveNode title="直线运动" id="abe6dd17-5d55-4862-ac63-ea545c864ac5">
                        <datamodel>
                            <Float64 key="blendRadius" value="0.025000000000000001"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                            <Float64 key="jointSpeed" value="1.0471975511965976"/>
                            <Float64 key="toolAcceleration" value="0.80000000000000004"/>
                            <Float64 key="toolSpeed" value="0.17999999999999999"/>
                            <String key="type" value="MOVE_L"/>
                            <Bool key="useActiveTCP" value="true"/>
                            <Bool key="useJoints" value="false"/>
                        </datamodel>
                        <children>
                            <WaypointNode title="agvGet" id="05f1a460-54da-4e6c-9d54-36eac417db25">
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
                                    <Waypoint key="waypoint" name="agvGet"/>
                                </datamodel>
                            </WaypointNode>
                            <WaitNode title="等待：0.05s" id="6fbad11d-c11c-4b6a-bbc0-adba497e1e72">
                                <datamodel>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Bool key="di_value" value="false"/>
                                    <Expression key="expression"/>
                                    <Float32 key="floatValue" value="4"/>
                                    <Float64 key="timeout" value="0"/>
                                    <String key="type" value="TIME"/>
                                    <Float64 key="waitTime" value="0.050000000000000003"/>
                                </datamodel>
                            </WaitNode>
                            <SetNode title="设置 control=299" id="f3f53073-fee1-4558-bfc5-98942c015156">
                                <datamodel>
                                    <Float64 key="aoValue" value="4"/>
                                    <Bool key="boolValue" value="false"/>
                                    <Int32 key="collisionLevel" value="-1"/>
                                    <Expression key="expression">
                                        <String string="2"/>
                                        <String string="9"/>
                                        <String string="9"/>
                                    </Expression>
                                    <Io key="io" name="control"/>
                                    <Float64 key="pulseTime" value="0.5"/>
                                    <Bool key="setTcp" value="false"/>
                                    <Bool key="syncProgramPointer" value="true"/>
                                    <String key="type" value="EXPRESSION_OUTPUT"/>
                                </datamodel>
                            </SetNode>
                            <WaitNode title="等待：2.00s" id="0e514b54-29d7-4118-a2e3-89c78c3746ba">
                                <datamodel>
                                    <String key="compareOperator" value="LESS_THAN"/>
                                    <Bool key="di_value" value="false"/>
                                    <Expression key="expression"/>
                                    <Float32 key="floatValue" value="4"/>
                                    <Float64 key="timeout" value="0"/>
                                    <String key="type" value="TIME"/>
                                    <Float64 key="waitTime" value="2"/>
                                </datamodel>
                            </WaitNode>
                            <WaypointNode title="up" id="00ca15be-f0db-4391-9bdf-d4f8a0c7db6e">
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
                                    <Waypoint key="waypoint" name="up"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </MoveNode>
                    <MoveNode title="关节运动" id="e5d9578a-3fe5-4dc8-8eb3-ae3e7297fda1">
                        <datamodel>
                            <Float64 key="blendRadius" value="0.025000000000000001"/>
                            <Feature key="feature" name="基座"/>
                            <Float64 key="jointAcceleration" value="1.0471975511965976"/>
                            <Float64 key="jointSpeed" value="0.52359877559829882"/>
                            <Float64 key="toolAcceleration" value="1.2"/>
                            <Float64 key="toolSpeed" value="0.25"/>
                            <String key="type" value="MOVE_J"/>
                            <Bool key="useActiveTCP" value="true"/>
                            <Bool key="useJoints" value="false"/>
                        </datamodel>
                        <children>
                            <WaypointNode title="home" id="af10011f-e666-4eb1-8788-7b249f1c6fad">
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
                                    <Waypoint key="waypoint" name="home"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </MoveNode>
                </children>
            </MoveNode>
        </children>
    </MainProgramNode>
</AuboProgram>
