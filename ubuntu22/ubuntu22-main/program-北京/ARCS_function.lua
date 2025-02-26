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



-- -- Get Current Point  
-- currentPosLine=getTcpPose()
-- -- currentPosSend={currentPosLine[1]*1000,currentPosLine[2]*1000,currentPosLine[3]*1000,toDeg(currentPosLine[4]),toDeg(currentPosLine[5]),toDeg(currentPosLine[6])}


