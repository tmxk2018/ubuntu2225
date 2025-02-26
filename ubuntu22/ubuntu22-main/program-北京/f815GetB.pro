<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="f815GetB" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
        <Waypoint name="pzd">
            <RobotPose pose="-0.1031820082469535,0.4555501797707873,0.6684328864473573,3.139393731061584,0.001203875487738723,-2.694252353521048"/>
            <JointPositions angles="-1.611196017914612,0.1365598350376306,-0.7557819290510288,0.6759478747853781,-1.570829339047234,-0.4877413561793484"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="getup">
            <RobotPose pose="-0.1447488645639831,0.615269824361797,0.503480443698855,3.141013882740093,-0.001910824776384787,1.942948688626845"/>
            <JointPositions angles="-1.533179759527233,0.3883514074743971,-0.9197045560202164,0.2607454410763638,-1.570715630178071,1.236261165687399"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="get">
            <RobotPose pose="-0.1447424907620278,0.6152197880812216,0.433584738265234,3.140933008474006,-0.002121293887962467,1.942920704608348"/>
            <JointPositions angles="-1.533185883012056,0.3560530867755055,-1.153676787622065,0.05884617380620803,-1.570722966234146,1.236275837799549"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="homeA">
            <RobotPose pose="-0.4544123117949642,-0.06242110509652263,0.4900353489150864,3.138013982338131,0.001831212770194146,-1.229411444343532"/>
            <JointPositions angles="-0.1315783801341234,-0.07986248906151193,-1.504062589193888,0.1425762498190679,-1.570796326794897,-0.4729665392441489"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="agvUp">
            <RobotPose pose="-0.5528841817229943,0.0001675628573553607,0.3226104485490393,3.141409044654606,-0.0003351266064415766,-2.708064043044712"/>
            <JointPositions angles="-0.2218783490764318,0.1877644151275219,-1.669534457823293,-0.2868801408438157,-1.570741306374334,0.9153894090197263"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-6.610000127693638e-05,-0.0002092000067932531"/>
                <d value="0.122,0.1215375999989046,-3.759999890462495e-05,3.759999890462495e-05,0.1027149000065401,0.094"/>
                <alpha value="0,-1.570297166765902,3.145133923627906,3.145228173705288,-1.570422826803059,1.571258836806754"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="agvPut">
            <RobotPose pose="-0.5529880149504983,0.0001984667430490907,0.221032958929334,3.141526149503554,-0.0001707627909396595,-2.708076321665692"/>
            <JointPositions angles="-0.2218905960460778,0.2913247904540278,-1.833417282141131,-0.5541216595746578,-1.570744974402371,0.9153894090197263"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="3.141592653589793,-1.570796326794897,0,-1.570796326794897,0,0"/>
                <a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-6.610000127693638e-05,-0.0002092000067932531"/>
                <d value="0.122,0.1215375999989046,-3.759999890462495e-05,3.759999890462495e-05,0.1027149000065401,0.094"/>
                <alpha value="0,-1.570297166765902,3.145133923627906,3.145228173705288,-1.570422826803059,1.571258836806754"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="getDAup">
            <RobotPose pose="-0.1715673331850213,0.6408173035764454,0.5208749694389621,-3.141032398310408,0.001313208693756291,2.041174777894299"/>
            <JointPositions angles="-1.493392416889817,0.5116110334764806,-0.6854873850254478,0.3751255593708838,-1.570781654682746,1.177822142993357"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="getDA">
            <RobotPose pose="-0.1715543219546257,0.6407608090497057,0.4476953253729113,-3.141560635772582,6.088484341388767e-07,2.041148107526952"/>
            <JointPositions angles="-1.493407725601875,0.4494117363869003,-0.9820783724272522,0.1393190409217349,-1.570766982570596,1.17783314707747"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
            <Kinematics status="NOT_INITIALIZED" validChecksum="false">
                <theta value="0,0,0,0,0,0"/>
                <a value="0,0,0,0,0,0"/>
                <d value="0,0,0,0,0,0"/>
                <alpha value="0,0,0,0,0,0"/>
                <beta value="0,0,0,0,0,0"/>
                <jointChecksum value="beta_value"/>
            </Kinematics>
        </Waypoint>
        <Waypoint name="guodu">
            <RobotPose pose="-0.3968532373273362,0.2494528765124102,0.5744012429833607,3.141069945009356,0.0001670788212137123,-2.579215187952461"/>
            <JointPositions angles="-0.8233117196790272,0.001377784085174067,-1.192606842384261,0.3763286725671959,-1.571056756785562,0.1851070349143108"/>
            <TcpOffset pose="0,0,0,0,0,0"/>
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
    <InitVariablesNode title="初始变量" id="93c8fba7-3767-4f2e-9d00-ed3012db6920">
        <datamodel/>
    </InitVariablesNode>
    <MainProgramNode title="机器人编程" id="b5571394-7241-4c34-a4ed-cf2c67d272e3">
        <datamodel>
            <Bool key="addBeforeStartSequence" value="false"/>
            <Bool key="loopForever" value="false"/>
        </datamodel>
        <children>
            <MoveNode title="关节运动" id="ff75ced5-4bf3-47d5-b18e-81b9532a1204">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="false"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <ScriptNode title="funcA.lua" id="01a1bf33-9db3-4536-8cbb-b8704a9ebd6f">
                        <datamodel>
                            <Expression key="expression"/>
                            <String key="file_path" value="funcA.lua"/>
                            <Bool key="use_file" value="true"/>
                        </datamodel>
                    </ScriptNode>
                    <WaypointNode title="homeA" id="aabb1934-f81d-4d6a-b74f-6048b8dc737d">
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
                            <Waypoint key="waypoint" name="homeA"/>
                        </datamodel>
                    </WaypointNode>
                    <WaypointNode title="pzd" id="e842f354-68a4-4c7f-871f-e56a138ab834">
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
                            <Waypoint key="waypoint" name="pzd"/>
                        </datamodel>
                    </WaypointNode>
                    <WaitNode title="等待：2.00s" id="336b40a6-0a1c-4b38-bee9-4155828c3bee">
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
                    <IfNode title="如果 guodu == 00211" id="ab6c166a-e78d-43e1-bf9e-4795f8fa5ee5">
                        <datamodel>
                            <Bool key="checkContinuously" value="false"/>
                            <Expression key="expression">
                                <Waypoint name="guodu"/>
                                <String string=" == "/>
                                <String string="0"/>
                                <String string="0"/>
                                <String string="2"/>
                                <String string="1"/>
                                <String string="1"/>
                            </Expression>
                        </datamodel>
                        <children>
                            <WaypointNode title="get" id="80368945-3eda-44d5-a16c-d9777ab4d2f4">
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
                                    <Waypoint key="waypoint" name="get"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="getup" id="6f28cbff-291f-40dd-8cfc-5f7b85e9efdd">
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
                                    <Waypoint key="waypoint" name="getup"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="homeA" id="aabb1934-f81d-4d6a-b74f-6048b8dc737d">
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
                                    <Waypoint key="waypoint" name="homeA"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </IfNode>
                </children>
            </MoveNode>
            <ScriptNode title="fget1.lua" id="64dcab67-0da9-4775-bf0a-a3b14f80f7e8">
                <datamodel>
                    <Expression key="expression"/>
                    <String key="file_path" value="fget1.lua"/>
                    <Bool key="use_file" value="true"/>
                </datamodel>
            </ScriptNode>
            <MoveNode title="关节运动" id="ff75ced5-4bf3-47d5-b18e-81b9532a1204">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="false"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="guodu" id="588fcbd0-de03-4082-adf2-a7e250fa1f0a">
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
                            <Waypoint key="waypoint" name="guodu"/>
                        </datamodel>
                    </WaypointNode>
                    <IfNode title="如果 get == 123326.23" id="77636319-708c-44ba-a6bc-20430f6f7946">
                        <datamodel>
                            <Bool key="checkContinuously" value="false"/>
                            <Expression key="expression">
                                <Waypoint name="get"/>
                                <String string=" == "/>
                                <String string="1"/>
                                <String string="2"/>
                                <String string="3"/>
                                <String string="3"/>
                                <String string="2"/>
                                <String string="6"/>
                                <String string="."/>
                                <String string="2"/>
                                <String string="3"/>
                            </Expression>
                        </datamodel>
                        <children>
                            <MoveNode title="关节运动" id="d9a0c5c7-c546-4b76-a651-532d504a3f74">
                                <datamodel>
                                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                                    <Feature key="feature" name="基座"/>
                                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                                    <Float64 key="toolAcceleration" value="1.2"/>
                                    <Float64 key="toolSpeed" value="0.25"/>
                                    <String key="type" value="MOVE_J"/>
                                    <Bool key="useActiveTCP" value="false"/>
                                    <Bool key="useJoints" value="false"/>
                                </datamodel>
                                <children>
                                    <WaypointNode title="agvUp" id="e59cd622-9ea4-47c1-a8de-ead967352957">
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
                                            <Waypoint key="waypoint" name="agvUp"/>
                                        </datamodel>
                                    </WaypointNode>
                                    <WaypointNode title="agvPut" id="3f305ae8-36ce-41f7-a9f6-d5ff77ec8e4d">
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
                                            <Waypoint key="waypoint" name="agvPut"/>
                                        </datamodel>
                                    </WaypointNode>
                                    <WaypointNode title="pzd" id="e842f354-68a4-4c7f-871f-e56a138ab834">
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
                                            <Waypoint key="waypoint" name="pzd"/>
                                        </datamodel>
                                    </WaypointNode>
                                    <ScriptNode title="paizhao33.lua" id="64dcab67-0da9-4775-bf0a-a3b14f80f7e8">
                                        <datamodel>
                                            <Expression key="expression"/>
                                            <String key="file_path" value="paizhao33.lua"/>
                                            <Bool key="use_file" value="true"/>
                                        </datamodel>
                                    </ScriptNode>
                                </children>
                            </MoveNode>
                        </children>
                    </IfNode>
                </children>
            </MoveNode>
            <MoveNode title="关节运动" id="234379b7-e63f-468e-a670-12ddbf7c900f">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="false"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="agvUp" id="e59cd622-9ea4-47c1-a8de-ead967352957">
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
                            <Waypoint key="waypoint" name="agvUp"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
            <MoveNode title="直线运动" id="88119eee-0a98-49b4-a736-df706dfbc233">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                    <Float64 key="toolAcceleration" value="0.59999999999999998"/>
                    <Float64 key="toolSpeed" value="0.20000000000000001"/>
                    <String key="type" value="MOVE_L"/>
                    <Bool key="useActiveTCP" value="false"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="agvPut" id="3f305ae8-36ce-41f7-a9f6-d5ff77ec8e4d">
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
                            <Waypoint key="waypoint" name="agvPut"/>
                        </datamodel>
                    </WaypointNode>
                    <WaitNode title="等待：1.00s" id="15145039-3480-47c2-9764-072bfedbf609">
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
                    <SetNode title="设置 control=811" id="3e2a488e-16da-46c6-a826-0caf20e47154">
                        <datamodel>
                            <Float64 key="aoValue" value="4"/>
                            <Bool key="boolValue" value="false"/>
                            <Int32 key="collisionLevel" value="-1"/>
                            <Expression key="expression">
                                <String string="8"/>
                                <String string="1"/>
                                <String string="1"/>
                            </Expression>
                            <Io key="io" name="control"/>
                            <Float64 key="pulseTime" value="0.5"/>
                            <Bool key="setTcp" value="false"/>
                            <Bool key="syncProgramPointer" value="true"/>
                            <String key="type" value="EXPRESSION_OUTPUT"/>
                        </datamodel>
                    </SetNode>
                    <WaitNode title="等待：1.00s" id="15145039-3480-47c2-9764-072bfedbf609">
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
                    <WaypointNode title="agvUp" id="e59cd622-9ea4-47c1-a8de-ead967352957">
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
                            <Waypoint key="waypoint" name="agvUp"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
            <MoveNode title="关节运动" id="234379b7-e63f-468e-a670-12ddbf7c900f">
                <datamodel>
                    <Float64 key="blendRadius" value="0.025000000000000001"/>
                    <Feature key="feature" name="基座"/>
                    <Float64 key="jointAcceleration" value="1.3962634015954636"/>
                    <Float64 key="jointSpeed" value="1.0471975511965976"/>
                    <TCP key="tcp" name="TCP" id="a25af795-ff3f-44f0-a924-0ddbe1d1ec61"/>
                    <Float64 key="toolAcceleration" value="1.2"/>
                    <Float64 key="toolSpeed" value="0.25"/>
                    <String key="type" value="MOVE_J"/>
                    <Bool key="useActiveTCP" value="false"/>
                    <Bool key="useJoints" value="false"/>
                </datamodel>
                <children>
                    <WaypointNode title="homeA" id="aabb1934-f81d-4d6a-b74f-6048b8dc737d">
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
                            <Waypoint key="waypoint" name="homeA"/>
                        </datamodel>
                    </WaypointNode>
                </children>
            </MoveNode>
            <IfNode title="如果 agvPut == 123.0226" id="070b2b2f-9daf-4bea-b2fd-0ed219d51e5f">
                <datamodel>
                    <Bool key="checkContinuously" value="false"/>
                    <Expression key="expression">
                        <Waypoint name="agvPut"/>
                        <String string=" == "/>
                        <String string="1"/>
                        <String string="2"/>
                        <String string="3"/>
                        <String string="."/>
                        <String string="0"/>
                        <String string="2"/>
                        <String string="2"/>
                        <String string="6"/>
                    </Expression>
                </datamodel>
                <children>
                    <MoveNode title="关节运动" id="839c78ae-9b26-47cd-9849-6649b6edfd0e">
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
                            <WaypointNode title="getDAup" id="e1a20521-27a3-4a87-a889-9fa7b7dcf5d3">
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
                                    <Waypoint key="waypoint" name="getDAup"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="getDA" id="c21f9f11-3811-4a8b-8836-bd4a0364aa01">
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
                                    <Waypoint key="waypoint" name="getDA"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="getDAup" id="e1a20521-27a3-4a87-a889-9fa7b7dcf5d3">
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
                                    <Waypoint key="waypoint" name="getDAup"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </MoveNode>
                    <MoveNode title="关节运动" id="7d61a68e-3381-42ce-b828-f53fcf8c4ee3">
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
                            <WaypointNode title="pzd" id="e842f354-68a4-4c7f-871f-e56a138ab834">
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
                                    <Waypoint key="waypoint" name="pzd"/>
                                </datamodel>
                            </WaypointNode>
                        </children>
                    </MoveNode>
                </children>
            </IfNode>
        </children>
    </MainProgramNode>
</AuboProgram>
