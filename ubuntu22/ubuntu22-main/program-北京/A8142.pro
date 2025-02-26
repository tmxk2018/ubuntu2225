<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="A8142" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="A1105312DA80264" crcValue="225635">
    <kinematics status="NOT_INITIALIZED" validChecksum="false">
        <theta value="3.14159265358979,-1.5707963267949,0,-1.5707963267949,0,0"/>
        <a value="0,-0.000484799995319918,0.408557099992875,0.37575839999388,-6.61000012769364e-05,-0.000209200006793253"/>
        <d value="0.122,0.121537599998905,-3.7599998904625e-05,3.7599998904625e-05,0.10271490000654,0.094"/>
        <alpha value="0,-1.5702971667659,3.14513392362791,3.14522817370529,-1.57042282680306,1.57125883680675"/>
        <jointChecksum value="0,0,0,0,0,0"/>
    </kinematics>
    <WaypointModel>
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
        <Waypoint name="putUP2">
            <RobotPose pose="-0.09406164782062143,0.5149084672457879,0.3179427407087708,1.556154281023032,0.4241250345249942,3.122182719501091"/>
            <JointPositions angles="-1.633479379185494,0.4174287751563929,-1.996494868204745,-2.427284541587852,-1.521501697998435,-0.4235068491859985"/>
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
        <Waypoint name="PUT22">
            <RobotPose pose="-0.09405717358581661,0.5149632598665251,0.2202961926323803,1.556596241049699,0.4241110803791184,3.12235354228847"/>
            <JointPositions angles="-1.633479379185494,0.6357279473537837,-2.026986760880853,-2.675672396205753,-1.521512702082548,-0.4235141852420735"/>
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
        <Waypoint name="pzd4">
            <RobotPose pose="-0.07888439999566645,0.5250757253967675,0.6029207922775044,2.97319780134579,0.1168737101306469,-2.713720538501295"/>
            <JointPositions angles="-1.649042215863138,0.1279655240885559,-1.039559524460714,0.1995077129896815,-1.59009382230038,-0.5179659072086543"/>
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
        <Waypoint name="gdddd">
            <RobotPose pose="-0.09156756597549007,0.5546094880319538,0.5111636565875596,2.123370195132839,0.3412762355732998,-2.943977860105963"/>
            <JointPositions angles="-1.63349162615514,0.1083397552308542,-1.62002302128696,-1.210284191125561,-1.521454013633947,-0.4234151484850601"/>
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
            <AssignmentNode title="tableUp:=0" id="13b1e28f-5b4d-4b44-8f29-8d6b821861f8">
                <datamodel>
                    <Expression key="expression">
                        <String string="0"/>
                    </Expression>
                    <String key="inputMode" value="bool"/>
                    <String key="operatorMessage" value=""/>
                    <Bool key="syncProgramPointer" value="true"/>
                    <String key="type" value="EXPRESSION"/>
                    <Variable key="variable">
                        <variable name="tableUp"/>
                    </Variable>
                </datamodel>
            </AssignmentNode>
            <AssignmentNode title="tableGet:=0" id="13b1e28f-5b4d-4b44-8f29-8d6b821861f8">
                <datamodel>
                    <Expression key="expression">
                        <String string="0"/>
                    </Expression>
                    <String key="inputMode" value="bool"/>
                    <String key="operatorMessage" value=""/>
                    <Bool key="syncProgramPointer" value="true"/>
                    <String key="type" value="EXPRESSION"/>
                    <Variable key="variable">
                        <variable name="tableGet"/>
                    </Variable>
                </datamodel>
            </AssignmentNode>
            <AssignmentNode title="point_get:=0" id="13b1e28f-5b4d-4b44-8f29-8d6b821861f8">
                <datamodel>
                    <Expression key="expression">
                        <String string="0"/>
                    </Expression>
                    <String key="inputMode" value="bool"/>
                    <String key="operatorMessage" value=""/>
                    <Bool key="syncProgramPointer" value="true"/>
                    <String key="type" value="EXPRESSION"/>
                    <Variable key="variable">
                        <variable name="point_get"/>
                    </Variable>
                </datamodel>
            </AssignmentNode>
            <AssignmentNode title="point_up:=0" id="13b1e28f-5b4d-4b44-8f29-8d6b821861f8">
                <datamodel>
                    <Expression key="expression">
                        <String string="0"/>
                    </Expression>
                    <String key="inputMode" value="bool"/>
                    <String key="operatorMessage" value=""/>
                    <Bool key="syncProgramPointer" value="true"/>
                    <String key="type" value="EXPRESSION"/>
                    <Variable key="variable">
                        <variable name="point_up"/>
                    </Variable>
                </datamodel>
            </AssignmentNode>
            <AssignmentNode title="gdddd_p:=0" id="13b1e28f-5b4d-4b44-8f29-8d6b821861f8">
                <datamodel>
                    <Expression key="expression">
                        <String string="0"/>
                    </Expression>
                    <String key="inputMode" value="bool"/>
                    <String key="operatorMessage" value=""/>
                    <Bool key="syncProgramPointer" value="true"/>
                    <String key="type" value="EXPRESSION"/>
                    <Variable key="variable">
                        <variable name="gdddd_p"/>
                    </Variable>
                </datamodel>
            </AssignmentNode>
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
                    <WaypointNode title="pzd4" id="0463ec69-e293-4d62-825c-78c20de57a68">
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
                            <Waypoint key="waypoint" name="pzd4"/>
                        </datamodel>
                    </WaypointNode>
                    <ScriptNode title="paizhao41.lua" id="71cda2e1-a922-40d4-8b57-ea35b747505a">
                        <datamodel>
                            <Expression key="expression"/>
                            <String key="file_path" value="paizhao41.lua"/>
                            <Bool key="use_file" value="true"/>
                        </datamodel>
                    </ScriptNode>
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
                    <MoveNode title="关节运动" id="7920f424-6ee3-4872-8ecf-b28eff4c7759">
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
                            <WaypointNode title="pzd4" id="0463ec69-e293-4d62-825c-78c20de57a68">
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
                                    <Waypoint key="waypoint" name="pzd4"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="gdddd" id="6b30cad3-eee0-4ed6-8b7f-f4f6bc03326e">
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
                                    <Waypoint key="waypoint" name="gdddd"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="putUP2" id="173a0d2a-1a05-48fe-a52a-bea2beb4d2a9">
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
                                    <Waypoint key="waypoint" name="putUP2"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="PUT22" id="20592e2d-340e-4795-afb6-39441f7a5692">
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
                                    <Waypoint key="waypoint" name="PUT22"/>
                                </datamodel>
                            </WaypointNode>
                            <WaypointNode title="putUP2" id="173a0d2a-1a05-48fe-a52a-bea2beb4d2a9">
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
                                    <Waypoint key="waypoint" name="putUP2"/>
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
                    </MoveNode>
                </children>
            </IfNode>
        </children>
    </MainProgramNode>
</AuboProgram>
