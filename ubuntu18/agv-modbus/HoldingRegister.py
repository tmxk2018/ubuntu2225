# 导入ModbusTcpClient类
from pymodbus.client.sync import ModbusTcpClient

# 创建Modbus TCP客户端实例
# 替换'192.168.31.168'为你的Modbus服务器的IP地址
# 替换502为你的Modbus服务器的端口号
client = ModbusTcpClient('192.168.31.168', port=502)

# 尝试连接到Modbus服务器
try:
    # 使用connect方法建立连接
    if client.connect():
        print("Connected to Modbus server")
        # 读取保持寄存器
        # 替换0为你想要读取的起始寄存器地址
        # 替换10为你想要读取的寄存器数量
        address = 0
        count = 10
        result = client.read_holding_registers(address, count)
        # 检查结果是否有效
        if not result.isError():
            # 打印寄存器的值
            print("Register values:")
            for register in result.registers:
                print(f"Register {register}: {hex(register)}")
        else:
            print(f"Error reading register at address {address}")
    else:
        print("Failed to connect to Modbus server")
except Exception as e:
    # 打印连接过程中出现的异常
    print(f"Connection failed: {e}")
finally:
    # 无论成功或失败，都关闭连接
    # 使用close方法关闭连接
    client.close()
    print("Modbus client connection closed")