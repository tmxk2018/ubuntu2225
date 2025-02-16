在Ubuntu系统中安装Lua及其扩展库LuaSocket的详细步骤如下：

## 安装

#### 安装Lua:

- 首先，可以通过wget命令下载Lua的源码包，例如Lua 5.3版本，使用命令：

  ```
  wget http://www.lua.org/ftp/lua-5.3.5.tar.gz
  ```

- 解压下载的源码包：

  ```
  tar -zxvf lua-5.3.5.tar.gz
  ```

- 进入解压后的目录，并编译安装Lua：

  ```
  cd lua-5.3.5/
  make linux
  sudo make install
  ```

- 如果在编译过程中遇到缺少readline库的错误，可以通过以下命令安装：

  ```
  sudo apt-get install libreadline7 libreadline-dev
  ```

- 安装完成后，在终端输入`lua`可以进入Lua命令行界面

##### 安装LuaRocks:--可选

- LuaRocks是Lua的包管理工具，可以通过以下命令安装：

  ```
  wget https://luarocks.org/releases/luarocks-3.3.0.tar.gz
  tar zxpf luarocks-3.3.0.tar.gz
  cd luarocks-3.3.0
  ./configure --prefix=/usr/local/luarocks && make && sudo make install
  ```

- 安装完成后，可以通过输入`luarocks`来验证是否安装成功

- 不对

```
把源码clone下来之后就可以进行本地源码安装，直接进入到luasocket目录进行编译安装了

# cd luasocket
# make && make install
具体说明：
根据LuaRocks的依赖要求安装必要的依赖项。

配置和编译：

shell
./configure
make
安装LuaRocks：

shell
sudo make install
验证安装：

shell
luarocks --version

编译和安装管理相关的模块
luarocks build

```

#### OK安装LuaSocket

```
# git clone https://github.com/diegonehab/luasocket.git
把源码clone下来之后就可以进行本地源码安装，直接进入到luasocket目录进行编译安装了

# cd luasocket
# make && make install
LuaSocket 使用
安装完成后，确保Lua能够找到LuaSocket模块。这可能需要设置LUA_PATH环境变量，以包含Lua模块的路径：
export LUA_PATH="/usr/local/lib/lua/5.x/?.lua;;"
```

实际：：

root@b-virtual-machine:~/lua/luasocket-master# export LUA_PATH="/usr/local/lib/lua/5.4/?.lua"
root@b-virtual-machine:~/lua/luasocket-master# export LUA_PATH="/usr/local/lib/lua/5.4/?.lua"

export LUA_PATH='/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.1/?.so'



##### 验证完成

打开Lua解释器或运行Lua脚本，尝试加载LuaSocket来验证安装是否成功：

```
lua
lua
require("socket.core")
```

如果没有错误消息，LuaSocket已经成功安装。

#### 环境变量配置

 设置环境变量

根据`luarocks config`显示的路径，你可能需要设置或更新`LUA_PATH`和`LUA_CPATH`环境变量。这些变量告诉Lua在哪里查找脚本和二进制模块。例如：

```
shell
export LUA_PATH='/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.4/?.so'
```

确保替换上述路径以匹配你的LuaRocks安装的实际路径

实际路径：

```
export LUA_PATH='/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.4/?.so'
```

![Thunder_Gzlk0p7QAj](F:\shareX-saved\auto_saved16\2024-08\Thunder_Gzlk0p7QAj.png)



### 版本管理工具

https://github.com/rbenv/rbenv

```
sudo apt install rbenv
```



### 方法A

`rbenv` 是一个Ruby版本管理工具，但它也可以用于管理其他语言的版本，比如Lua。如果你下载了`rbenv`的源码包（例如`rbenv-master.zip`），以下是手动安装和使用的步骤：

安装步骤：

1. **解压缩源码包**： 首先，将下载的`rbenv-master.zip`文件解压缩到合适的目录。例如，解压缩到你的主目录下：

   ```
   shell
   unzip rbenv-master.zip
   mv rbenv-master ~/rbenv
   ```

2. **初始化rbenv**： 将`rbenv`的bin目录添加到你的`PATH`环境变量中，这样你就可以在任何地方调用`rbenv`命令。编辑你的shell配置文件（如`.bashrc`或`.zshrc`）：

   ```
   shell
   echo 'export PATH="$HOME/rbenv/bin:$PATH"' >> ~/.bashrc
   ```

3. **重新加载配置文件**： 使`PATH`的更改生效：

   ```
   shell
   source ~/.bashrc
   ```

4. **安装ruby-build**： `ruby-build`是一个`rbenv`插件，用于安装Ruby版本。如果你打算使用`rbenv`来管理Lua版本，可能需要类似的插件或手动编译Lua版本。

5. **设置rbenv为版本管理器**： 告诉`rbenv`自己作为版本管理器：

   ```
   shell
   echo 'eval "$(rbenv init -)"' >> ~/.bashrc
   source ~/.bashrc
   ```

##### 使用步骤：

1. **检查rbenv版本**： 使用以下命令检查`rbenv`是否正确安装：

   ```
   shell
   rbenv --version
   rbenv -v
   ```

2. **安装Lua版本**： 使用`rbenv`安装Lua版本，你可能需要找到可用的Lua版本源码包：

   ```
   shell
   rbenv install <lua-version>
   ```

3. **列出所有可安装的Lua版本**：

   ```
   shell
   rbenv install -l
   ```

4. **设置全局Lua版本**： 设置全局默认的Lua版本：

   ```
   shell
   rbenv global <lua-version>
   ```

5. **设置局部Lua版本**： 为特定项目设置局部Lua版本：

   ```
   shell
   rbenv local <lua-version>
   ```

6. **查看当前使用的Lua版本**：

   ```
   shell
   rbenv version
   ```

7. **重哈希rbenv的可执行文件**： 当你安装一个新的Lua版本后，需要重哈希`rbenv`的可执行文件：

   ```
   shell
   rbenv rehash
   ```

##### 注意事项：

- 标准`rbenv`是为Ruby设计的，因此可能需要一些调整才能用于Lua。
- Lua没有`ruby-build`这样的插件，因此你可能需要手动编译Lua版本。
- 确保在编译Lua时指定正确的前缀路径，以便`rbenv`可以找到它们。

通过上述步骤，你可以手动安装和使用`rbenv`来管理Lua版本。





## 测试

参考https://www.cnblogs.com/archoncap/p/5238229.html

```
-- socket方式请求
local socket = require("socket")
local host = "100.42.237.125"
local file = "/"
local sock = assert(socket.connect(host, 80))  -- 创建一个 TCP 连接，连接到 HTTP 连接的标准 80 端口上
sock:send("GET " .. file .. " HTTP/1.0\r\n\r\n")
repeat
    local chunk, status, partial = sock:receive(1024) -- 以 1K 的字节块来接收数据，并把接收到字节块输出来
    -- print(chunk or partial)
until status ~= "closed"
sock:close()  -- 关闭 TCP 连接
```

有效测试

```
-- socket方式请求
local socket = require("socket")
local host = "192.168.134.1"
local file = "/"
local sock = assert(socket.connect(host, 8000))  -- 创建一个 TCP 连接，连接到 HTTP 连接的标准 80 端口上
sock:send("GET " .. file .. " HTTP/1.0\r\n\r\n")
repeat
    local chunk, status, partial = sock:receive(1024) -- 以 1K 的字节块来接收数据，并把接收到字节块输出来
    -- print(chunk or partial)
until status ~= "closed"
sock:close()  -- 关闭 TCP 连接
```





# 目录

export LUA_PATH='/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.1/?.so'



export LUA_PATH='/usr/local/lib/lua/5.4/?.lua;/usr/local/lib/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.4/?.so'

export LUA_PATH='/usr/local/lib/lua/5.x/?.lua;/usr/local/lib/lua/5.x/?/init.lua'
export LUA_CPATH='/usr/local/lib/lua/5.x/?.so'

### 配置说明：

1. **下载 LuaSocket 包**： 首先，你需要下载 `luasocket-3.1.0-1.linux-x86_64.rock` 文件。你可以从 LuaRocks 服务器或者 LuaSocket 的官方网站下载。

2. **使用 LuaRocks 安装**： 下载完成后，使用 LuaRocks 命令行工具来安装这个包。打开终端，然后运行以下命令：

   ```
   sh
   luarocks install luasocket-3.1.0-1.linux-x86_64.rock
   ```

3. **确认安装成功**： 安装完成后，你可以使用以下命令来检查 LuaSocket 是否正确安装：

   ```
   sh
   lua -e "require 'socket'"
   ```

   如果没有任何错误消息，那么 LuaSocket 已经成功安装。



## 深度测试要求

LuaSocket 提供了用于网络通信的基础功能，但进行网络连接稳定性和质量的深度分析通常需要一些额外的工具和技术。以下是一些基本的步骤和方法，你可以使用 LuaSocket 来测试网络连接的一些方面：

1. **基础连接测试**：
   使用 LuaSocket 建立一个 TCP 连接，并发送和接收数据，以检查连接是否成功建立和维持。

   ```lua
   local socket = require("socket")
   local host = "example.com"
   local port = 80

   local conn = socket.connect(host, port)
   if conn then
       print("Connected to " .. host .. " on port " .. port)
       conn:send("GET / HTTP/1.1\r\nHost: " .. host .. "\r\nConnection: close\r\n\r\n")
       while 1 do
           local data, err = conn:receive()
           if not data then
               break
           end
           -- 处理接收到的数据
       end
       conn:close()
   else
       print("Failed to connect to " .. host)
   end
   ```

2. **延时测试**：
   使用 LuaSocket 测量往返时间（RTT）。这可以通过发送一个数据包并等待响应来完成。

   ```lua
   local timestamp = socket.gettime()  -- 获取当前时间
   conn:send("Your data here")
   local response = conn:receive()    -- 等待响应
   local latency = socket.gettime() - timestamp  -- 计算延时
   print("Latency: ", latency)
   ```

3. **稳定性测试**：
   连续发送和接收数据，以检查连接是否稳定。你可以设置一个循环，定时发送数据，并检查是否有丢包或连接中断。

   ```lua
   local count = 0
   while true do
       local status, err = pcall(function()
           conn:send("ping")
           local response = conn:receive()
           count = count + 1
       end)

       if not status then
           print("Error: ", err)
           break
       end

       if count % 10 == 0 then  -- 每10次发送打印一次状态
           print("Packets sent: ", count)
       end
   end
   ```

4. **带宽测试**：
   通过发送大量数据来测试带宽。这可以帮助你了解在最大负载下网络的表现。

   ```lua
   local large_data = string.rep("A", 10^6)  -- 创建一个大型数据块
   local start_time = socket.gettime()
   conn:send(large_data)
   local end_time = socket.gettime()
   local time_taken = end_time - start_time
   local bandwidth = (10^6 / time_taken) * 8  -- 计算带宽，单位为 bits/s
   print("Bandwidth: ", bandwidth)
   ```

5. **使用第三方工具**：
   对于更深入的网络质量分析，可能需要使用专门的网络测试工具，如 `iperf` 或 `ping`。LuaSocket 可以调用这些工具并分析它们的输出。

6. **日志记录**：
   在测试过程中记录所有关键数据，如发送和接收时间、丢包率、错误消息等，以便进行后续分析。

7. **分析结果**：
   根据收集的数据，你可以分析网络的稳定性、延迟、带宽和丢包率等指标。

请注意，LuaSocket 本身并不提供高级的网络分析工具，上述方法提供了一些基本的测试手段。对于更深入的分析，你可能需要使用更专业的网络监控和分析工具。
