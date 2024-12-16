--分割字符串函数输出列表
function string.split(str,delimiter)
	if str  ==  nil or str ==  ''  or  delimiter  == nil then
   return  nil
	end
	local  result =  {}
	for match in  (str..delimiter):gmatch("(.-)"..delimiter) do
   table.insert(result,match)
	end
	return result
end

--自定义函数区
pi = 3.1416
--弧度转换函数单个
function toRad(degs)
    if degs==nil or degs=="" then
        return nil
    end
    return degs*(pi/180) 
end
-- 弧度转角度单个
function toDeg(rads)
    if rads==nil or rads =="" then
        return nil
    end
    return rads*(180/pi)
end

-- 将角度列表转换为弧度列表
function degToRadList(degrees)
    local radians = {}
    for i,j in ipairs(degrees) do
        radians[i] =j*(pi/180)
    end
    return radians
end

-- 将弧度列表转换为角度列表
function radToDegList(radians)
    local degrees = {}
    for a,b in ipairs(radians) do
        degrees[a] =b*(180/pi)
    end
    return degrees
end
---------------------------------------



-- 定义一个全局变量作为计数器，模拟种子变化
local counter = math.random(1, 1000000)

-- 定义一个函数来生成随机客户端名称
function generateRandomClientName(length)
    -- 定义字符集，包括大小写字母和数字
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local client_name = ""

    -- 循环生成随机字符直到达到指定长度
    for i = 1, length do
        -- 使用计数器模拟种子变化
        local random_value = ((counter % #charset) + 1)
        client_name = client_name .. charset:sub(random_value, random_value)
        counter = (counter + 1) % 1000000 -- 更新计数器
    end
    return client_name
end

-- -- Get Current Point  
-- currentPosLine=getTcpPose()
-- -- currentPosSend={currentPosLine[1]*1000,currentPosLine[2]*1000,currentPosLine[3]*1000,toDeg(currentPosLine[4]),toDeg(currentPosLine[5]),toDeg(currentPosLine[6])}


--[[

-- 定义一个函数来生成随机客户端名称
function generateRandomClientName(length)
    -- 定义字符集，包括大小写字母和数字
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    -- 循环生成随机字符直到达到指定长度
    local client_name = ""
    for i = 1, length do
        -- 每次循环时重新设置随机种子，以确保每次生成的随机数不同
        math.randomseed(os.time() % 100000000000) -- 使用当前时间的某个因子作为种子
        local random_index = math.random(1, #charset)
        client_name = client_name .. charset:sub(random_index, random_index)
    end
    return client_name
end


-- 定义一个函数来生成随机客户端名称
function generateRandomClientName(length)
    -- 定义字符集，包括大小写字母和数字
    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local client_name = ""
    -- 循环生成随机字符直到达到指定长度
    for i = 1, length do
        -- math.random(1, #charset) 生成一个1到charset长度之间的随机数
        client_name = client_name .. charset:sub(math.random(1, #charset))
    end
    return client_name
end

-- 调用函数生成随机客户端名称，并打印结果
local client_name = generateRandomClientName(10) -- 这里指定生成10个字符长度的名称
print("Generated Client Name:", client_name)
]]
