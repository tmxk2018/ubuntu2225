<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="Untitled_0" installation="jodel11" installationRelativePath="jodel11.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="1110302CN10937" crcValue="6B46">
	<kinematics status="NOT_INITIALIZED" validChecksum="false">
		<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
		<a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-0.00006610000127693638,-0.00020920000679325312"/>
		<d value="0.122,0.12153759999890462,-0.000037599998904624954,0.000037599998904624954,0.10271490000654011,0.094"/>
		<alpha value="0,-1.5702971667659025,3.145133923627906,3.145228173705288,-1.5704228268030587,1.571258836806754"/>
		<jointChecksum value="0,0,0,0,0,0"/>
	</kinematics>
	<WaypointModel>
		<Waypoint name="路点_0">
			<RobotPose pose="-0.23068754494035995,-0.17067611440899938,0.306303360248838,-3.0146975968405885,0.008741238129868436,-0.5220298672743885"/>
			<JointPositions angles="0.23491831000700145,-0.5122448141556608,-2.2697247610068203,-0.10560252720069371,-1.668905072714902,-0.8093100381741527"/>
			<TcpOffset pose="0,0,0,0,0,0"/>
			<Kinematics status="NOT_INITIALIZED" validChecksum="false">
				<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
				<a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-0.00006610000127693638,-0.00020920000679325312"/>
				<d value="0.122,0.12153759999890462,-0.000037599998904624954,0.000037599998904624954,0.10271490000654011,0.094"/>
				<alpha value="0,-1.5702971667659025,3.145133923627906,3.145228173705288,-1.5704228268030587,1.571258836806754"/>
				<beta value="0,0,0,0,0,0"/>
				<jointChecksum value="beta_value"/>
			</Kinematics>
		</Waypoint>
		<Waypoint name="路点_1">
			<RobotPose pose="-0.23059863914189563,-0.1706535265887313,0.39703410450966814,-3.014632367163287,0.008666003695316608,-0.5220284435290018"/>
			<JointPositions angles="0.23491218652217846,-0.528713926587108,-2.03484931539358,0.1458407947724759,-1.6689014046868644,-0.8093100381741527"/>
			<TcpOffset pose="0,0,0,0,0,0"/>
			<Kinematics status="NOT_INITIALIZED" validChecksum="false">
				<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
				<a value="0,-0.0004847999953199178,0.408557099992875,0.3757583999938797,-0.00006610000127693638,-0.00020920000679325312"/>
				<d value="0.122,0.12153759999890462,-0.000037599998904624954,0.000037599998904624954,0.10271490000654011,0.094"/>
				<alpha value="0,-1.5702971667659025,3.145133923627906,3.145228173705288,-1.5704228268030587,1.571258836806754"/>
				<beta value="0,0,0,0,0,0"/>
				<jointChecksum value="beta_value"/>
			</Kinematics>
		</Waypoint>
	</WaypointModel>
	<TimerModel/>
	<VariableModel/>
	<SubProgModel/>
	<InitVariablesNode title="初始变量" id="e8d73376-5301-4f66-885e-e0f94777f210">
		<datamodel/>
	</InitVariablesNode>
	<MainProgramNode title="机器人编程" id="b8a9ea27-1770-4c18-9799-ca0363f9e869">
		<datamodel>
			<Bool key="addBeforeStartSequence" value="false"/>
			<Bool key="addAfterPauseSequence" value="false"/>
			<Bool key="addBeforeResumeSequence" value="false"/>
			<Bool key="addAfterStopSequence" value="false"/>
			<Bool key="loopForever" value="false"/>
			<Bool key="hasStartFraction" value="false"/>
			<Int32 key="startFraction" value="100"/>
		</datamodel>
		<children>
			<Auboagv title="ARM 移动: LM1 向前, 路径: LM1-&gt;LM2" id="792d6868-5416-41cd-809a-3c497ff1f5ab">
				<datamodel>
					<String key="advanced_point" value="LM1"/>
					<Bool key="advanced_setting_command" value="true"/>
					<String key="direction" value="forward"/>
					<Expression key="expression">
						<String string="agv.hasConnected()==false"/>
					</Expression>
					<Bool key="move_to_command" value="true"/>
					<String key="path" value="LM1-&gt;LM2"/>
					<Bool key="path_setting_command" value="true"/>
					<Bool key="program_node_is_defined" value="true"/>
					<String key="speed" value=""/>
					<String key="wspeed" value=""/>
				</datamodel>
			</Auboagv>
			<MoveNode title="关节运动" id="749ef5f8-c5a4-4510-b517-3fe3003b9594">
				<datamodel>
					<Float64 key="blendRadius" value="0.025"/>
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
					<WaypointNode title="路点_0" id="2c3bb32a-92bf-46a2-8209-89020b450ac9">
						<datamodel>
							<VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
							<Float64 key="blendRadius" value="0.02"/>
							<String key="blendType" value="NO_BLEND"/>
							<Float64 key="cartesianAcceleration" value="1.2"/>
							<Float64 key="cartesianSpeed" value="0.25"/>
							<Float64 key="jointAcceleration" value="1.3962634015954636"/>
							<Float64 key="jointSpeed" value="1.0471975511965976"/>
							<Float64 key="motionTime" value="0"/>
							<String key="type" value="POSITION"/>
							<String key="motionType" value="SHARED"/>
							<Waypoint key="waypoint" name="路点_0"/>
						</datamodel>
					</WaypointNode>
					<WaypointNode title="路点_1" id="317de5e6-4a34-45c5-add1-b4eb9ba35b45">
						<datamodel>
							<VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
							<Float64 key="blendRadius" value="0.02"/>
							<String key="blendType" value="NO_BLEND"/>
							<Float64 key="cartesianAcceleration" value="1.2"/>
							<Float64 key="cartesianSpeed" value="0.25"/>
							<Float64 key="jointAcceleration" value="1.3962634015954636"/>
							<Float64 key="jointSpeed" value="1.0471975511965976"/>
							<Float64 key="motionTime" value="0"/>
							<String key="type" value="POSITION"/>
							<String key="motionType" value="SHARED"/>
							<Waypoint key="waypoint" name="路点_1"/>
						</datamodel>
					</WaypointNode>
					<WaypointNode title="路点_0" id="2c3bb32a-92bf-46a2-8209-89020b450ac9">
						<datamodel>
							<VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
							<Float64 key="blendRadius" value="0.02"/>
							<String key="blendType" value="NO_BLEND"/>
							<Float64 key="cartesianAcceleration" value="1.2"/>
							<Float64 key="cartesianSpeed" value="0.25"/>
							<Float64 key="jointAcceleration" value="1.3962634015954636"/>
							<Float64 key="jointSpeed" value="1.0471975511965976"/>
							<Float64 key="motionTime" value="0"/>
							<String key="type" value="POSITION"/>
							<String key="motionType" value="SHARED"/>
							<Waypoint key="waypoint" name="路点_0"/>
						</datamodel>
					</WaypointNode>
					<WaypointNode title="路点_1" id="317de5e6-4a34-45c5-add1-b4eb9ba35b45">
						<datamodel>
							<VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
							<Float64 key="blendRadius" value="0.02"/>
							<String key="blendType" value="NO_BLEND"/>
							<Float64 key="cartesianAcceleration" value="1.2"/>
							<Float64 key="cartesianSpeed" value="0.25"/>
							<Float64 key="jointAcceleration" value="1.3962634015954636"/>
							<Float64 key="jointSpeed" value="1.0471975511965976"/>
							<Float64 key="motionTime" value="0"/>
							<String key="type" value="POSITION"/>
							<String key="motionType" value="SHARED"/>
							<Waypoint key="waypoint" name="路点_1"/>
						</datamodel>
					</WaypointNode>
					<WaypointNode title="路点_0" id="2c3bb32a-92bf-46a2-8209-89020b450ac9">
						<datamodel>
							<VectorDouble key="baseToFeature" value="0,0,0,0,0,0"/>
							<Float64 key="blendRadius" value="0.02"/>
							<String key="blendType" value="NO_BLEND"/>
							<Float64 key="cartesianAcceleration" value="1.2"/>
							<Float64 key="cartesianSpeed" value="0.25"/>
							<Float64 key="jointAcceleration" value="1.3962634015954636"/>
							<Float64 key="jointSpeed" value="1.0471975511965976"/>
							<Float64 key="motionTime" value="0"/>
							<String key="type" value="POSITION"/>
							<String key="motionType" value="SHARED"/>
							<Waypoint key="waypoint" name="路点_0"/>
						</datamodel>
					</WaypointNode>
				</children>
			</MoveNode>
		</children>
	</MainProgramNode>
</AuboProgram>
