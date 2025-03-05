-- 分割字符串函数，修正空字符串问题
function string.split(str, delimiter)
    if not str or str:match("^%s*$") or not delimiter then return nil end
    local result = {}
    for match in str:gmatch("([^" .. delimiter .. "]+)") do
        table.insert(result, match)
    end
    return result
end

-- 将 Lua 表转换为逗号分隔的字符串
function table2str(joint_table)
    if not joint_table or #joint_table == 0 then return "" end
    return table.concat(joint_table, ",")
end

-- 拍照并获取工具偏移量
function photo1()
    sleep(1)  -- 休眠 1 秒，确保 TCP 连接稳定
    
    -- 发送指令 "photo1"
    tcp.client.send_str_data(ip, port, "photo1")

    local recv = ""
    local attempt = 0
    local max_attempts = 50  -- 限制最多尝试 50 次，避免死循环

    -- 轮询接收数据，确保数据有效
    while not recv or recv == "" or recv == "1" or recv == "[err]" or recv == "0" do
        recv = tcp.client.recv_str_data(ip, port)
        attempt = attempt + 1
        sleep(0.1)  -- 休眠 0.1 秒，避免 CPU 过载

        if attempt > max_attempts then
            tcp.client.send_str_data(ip, port, "photo1")  -- 重新发送指令
            print("Error: 接收数据失败，重试中...")
            attempt = 0  -- 重新计数
        end
    end

    print("接收数据: " .. recv)

    -- 解析接收到的字符串
    local table1 = string.split(recv, ",")
    if not table1 or #table1 < 4 then
        print("Error: 数据解析失败，收到的内容无效")
        return
    end

    -- 解析偏移量
    local tool1_x_offset = tonumber(table1[1]) / 1000
    local tool1_y_offset = tonumber(table1[2]) / 1000
    local tool1_t_offset = -tonumber(table1[3])  -- 取负值

    print("工具偏移量计算完成:")
    print("X 偏移:", tool1_x_offset)
    print("Y 偏移:", tool1_y_offset)
    print("角度偏移:", tool1_t_offset)

    -- 计算新的抓取位置
    local a = pick_pos[1] + tool1_x_offset
    local b = pick_pos[2] + tool1_y_offset
    local c = pick_pos[3]

    print("计算后的抓取位置:")
    print("a:", a, "b:", b, "c:", c)

    -- 计算新的 RPY 角度
    local d1 = d2r(pick_rpy[1])
    local d2 = d2r(pick_rpy[2])
    local d3 = d2r(pick_rpy[3]) + d2r(tool1_t_offset)

    print("RPY 角度转换完成:")
    print("d1:", d1, "d2:", d2, "d3:", d3)

    -- 将欧拉角转换为四元数
    local d = rpy2quaternion({d1, d2, d3})
    print("四元数计算完成:", d)

    -- 计算目标位置
    local joint_prepick = get_target_pose({a, b, c}, d, false, {0, 0, 0}, {1, 0, 0, 0})
    print("目标关节位置计算完成!")

    -- 设置全局变量 (确保 joint_prepick 不为空)
    if joint_prepick then
        set_global_variable("V_P_prepick", "0,0,0,0,0,0,0," .. table2str(joint_prepick))
        print("目标关节变量已设置:", table2str(joint_prepick))
    else
        print("Error: 计算的 joint_prepick 为空!")
    end
end

-- 连接 TCP 服务器
ip = "192.168.192.6"
port = 8000

-- 设定初始抓取位置 (单位: 米)
pick_pos = {-0.506988, -0.005821, 0.028803}

-- 设定初始 RPY 角 (单位: 度)
pick_rpy = {180, 0, -90}

-- 建立 TCP 连接
tcp.client.connect(ip, port)
sleep(0.5)
