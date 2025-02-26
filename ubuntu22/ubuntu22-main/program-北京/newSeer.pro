<?xml version="1.0" encoding="UTF-8"?>
<AuboProgram name="newSeer" installation="default" installationRelativePath="default.ins" directory="/root/arcs_ws/program" createdIn="0.31.0-alpha.58" lastSaveIn="0.31.0-alpha.58" robotSerialNumber="1110302CN10937" crcValue="6B46">
	<kinematics status="NOT_INITIALIZED" validChecksum="false">
		<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
		<a value="0,0.000058000001445179805,0.3685108999903314,0.31633569999504835,0.00004529999932856299,0.00031659999513067305"/>
		<d value="0.122,0.12161449999874457,-0.00011449999874457717,0.00011449999874457717,0.1021015999931842,0.094"/>
		<alpha value="0,-1.5699515867771137,3.139751333632045,3.144889583699875,-1.5701854567767608,1.5662026168454926"/>
		<jointChecksum value="0,0,0,0,0,0"/>
	</kinematics>
	<WaypointModel>
		<Waypoint name="路点_1">
			<RobotPose pose="-0.48716791182726016,-0.12931604765493193,0.46728818885246504,3.1008464412910626,0.004912020228759061,-1.5541341343294228"/>
			<JointPositions angles="0.016979998172165906,-0.07163309953610766,-1.4387967869823914,0.16288749657342497,-1.5757172156590051,0.00011745331445196988"/>
			<TcpOffset pose="0,0.1,0,0,0,0"/>
			<Kinematics status="NOT_INITIALIZED" validChecksum="false">
				<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
				<a value="0,0.000058000001445179805,0.3685108999903314,0.31633569999504835,0.00004529999932856299,0.00031659999513067305"/>
				<d value="0.122,0.12161449999874457,-0.00011449999874457717,0.00011449999874457717,0.1021015999931842,0.094"/>
				<alpha value="0,-1.5699515867771137,3.139751333632045,3.144889583699875,-1.5701854567767608,1.5662026168454926"/>
				<beta value="0,0,0,0,0,0"/>
				<jointChecksum value="beta_value"/>
			</Kinematics>
		</Waypoint>
		<Waypoint name="路点_0">
			<RobotPose pose="-0.4951949916325865,-0.13432446059596295,0.3669614739675372,-3.0930999081189543,-0.046517112724106933,-1.5561291775566115"/>
			<JointPositions angles="0.017045357867811358,-0.04274524095212352,-1.674052250110359,-0.012076090778998511,-1.5242186624051561,0.00012150342874341712"/>
			<TcpOffset pose="0,0.1,0,0,0,0"/>
			<Kinematics status="NOT_INITIALIZED" validChecksum="false">
				<theta value="3.141592653589793,-1.5707963267948966,0,-1.5707963267948966,0,0"/>
				<a value="0,0.000058000001445179805,0.3685108999903314,0.31633569999504835,0.00004529999932856299,0.00031659999513067305"/>
				<d value="0.122,0.12161449999874457,-0.00011449999874457717,0.00011449999874457717,0.1021015999931842,0.094"/>
				<alpha value="0,-1.5699515867771137,3.139751333632045,3.144889583699875,-1.5701854567767608,1.5662026168454926"/>
				<beta value="0,0,0,0,0,0"/>
				<jointChecksum value="beta_value"/>
			</Kinematics>
		</Waypoint>
	</WaypointModel>
	<TimerModel/>
	<VariableModel/>
	<SubProgModel/>
	<InitVariablesNode title="初始变量" id="a38fcdd9-9799-4062-b737-2784adcc2308">
		<datamodel/>
	</InitVariablesNode>
	<MainProgramNode title="机器人编程" id="8c64b638-4f61-4d20-91da-31936616d93b">
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
			<Auboagv title="ARM 移动: LM1 向前, 路径: LM4-&gt;LM3-&gt;LM2" id="d12c3f4c-1b29-4eeb-8c07-a24761fb435c">
				<datamodel>
					<String key="advanced_point" value="LM1"/>
					<Bool key="advanced_setting_command" value="false"/>
					<String key="direction" value="forward"/>
					<Expression key="expression">
						<String string="agv.hasConnected()==false"/>
					</Expression>
					<Bool key="move_to_command" value="true"/>
					<String key="path" value="LM4-&gt;LM3-&gt;LM2"/>
					<Bool key="path_setting_command" value="true"/>
					<Bool key="program_node_is_defined" value="true"/>
				</datamodel>
			</Auboagv>
			<WaitNode title="等待: 1" id="6e62412d-60c6-4190-9000-4ad94990a777">
				<datamodel>
					<String key="compareOperator" value="LESS_THAN"/>
					<Bool key="di_value" value="false"/>
					<Expression key="expression"/>
					<Float32 key="floatValue" value="4"/>
					<String key="type" value="TIME"/>
					<Float64 key="waitTime" value="1"/>
				</datamodel>
			</WaitNode>
			<Auboagv title="ARM 移动: LM2 向前, 路径: LM1-&gt;LM2-&gt;LM3" id="188a8b05-103a-4ee6-918f-338236d3dbf5">
				<datamodel>
					<String key="advanced_point" value="LM2"/>
					<Bool key="advanced_setting_command" value="false"/>
					<String key="direction" value="forward"/>
					<Expression key="expression">
						<String string="agv.hasConnected()==false"/>
					</Expression>
					<Bool key="move_to_command" value="true"/>
					<String key="path" value="LM1-&gt;LM2-&gt;LM3"/>
					<Bool key="path_setting_command" value="true"/>
					<Bool key="program_node_is_defined" value="true"/>
				</datamodel>
			</Auboagv>
			<WaitNode title="等待: 1" id="94197674-4910-4613-ad1b-ddbe848f541d">
				<datamodel>
					<String key="compareOperator" value="LESS_THAN"/>
					<Bool key="di_value" value="false"/>
					<Expression key="expression"/>
					<Float32 key="floatValue" value="4"/>
					<String key="type" value="TIME"/>
					<Float64 key="waitTime" value="1"/>
				</datamodel>
			</WaitNode>
			<MoveNode title="关节运动" id="be2d4630-dea0-46b1-93bb-a06332bc5e79">
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
					<WaypointNode title="路点_1" id="a76fab5c-589a-48ee-ad02-ba5df4d1ca08">
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
					<WaypointNode title="路点_0" id="1a0811de-359e-47ec-8963-6c26aad14b56">
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
