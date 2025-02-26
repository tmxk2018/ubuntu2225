    modbusSetOutputSignal('agvGo', 1)

    sleep(2)

    sched.sync_program_point()
    while not (modbusGetSignalStatus('agvOver') == 4) do
        sync()
    end

    sleep(2)