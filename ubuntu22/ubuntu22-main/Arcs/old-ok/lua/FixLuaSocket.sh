#!/bin/bash
set -e


##**********************************************************************************
# 1、复制解压文件

# mkdir -p /root/lua_new
# mkdir -p /root/lua_new/lua-5.4.7
# mkdir -p /root/lua_new/luarocks-3.11.1

folder_lua_new="/root/lua_new"
folder_lua5="/root/lua_new/lua-5.4.7"
folder_luarocks="/root/lua_new/luarocks-3.11.1"

if [ ! -d "$folder_lua_new" ]; then
    mkdir -p "$folder_lua_new"
	mkdir -p "$folder_lua5"
	mkdir -p "$folder_luarocks"
fi

## -------------------------------------------------------------------------------
cd "$folder_lua_new"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_lua_new' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------

cd "/root"

cp -rf lua_new.zip $folder_lua_new

## -------------------------------------------------------------------------------
cd "$folder_lua_new"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_lua' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------
unzip -oq lua_new.zip -d "$folder_lua_new"

########################################################################
extract_tarA() {
    tar -zvxf lua-5.4.7.tar.gz -C "$folder_lua_new" || return 1
    tar -zxvf luarocks-3.11.1.tar.gz -C "$folder_lua_new" || return 1
    echo "The decompression is complete"
}

# 尝试解压文件，如果失败则打印错误消息并退出
if ! extract_tarA; then
    echo "Error: Failed to extract the files."
    exit 1
fi

# 使用trap捕获脚本执行中的任何错误，并重新调用extract_tarA函数
trap 'extract_tarA; exit 1' ERR
echo "sync..."
sync
########################################################################


##**********************************************************************************
# 2、编译安装

## 2.1 lua 版本安装
## -------------------------------------------------------------------------------
cd "$folder_lua5"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_lua5' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------
make linux
make install

echo "Step 1 is complete"

## 2.2 luarocks 版本安装
## -------------------------------------------------------------------------------
cd "$folder_luarocks"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_luarocks' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------
make linux
make install

luarocks build

echo "Step 2 is complete"

## 2.3 luasocket 版本安装

## -------------------------------------------------------------------------------
cd "$folder_lua_new"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_luarocks' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------
cp -rf luasocket-3.1.0-1.linux-x86_64.rock "$folder_luarocks"
## -------------------------------------------------------------------------------
cd "$folder_luarocks"
# 检查cd命令是否成功执行
if [ $? -ne 0 ]; then
    echo "Error: Directory '$folder_luarocks' does not exist or cannot be accessed."
    exit 1
fi
## -------------------------------------------------------------------------------
luarocks install luasocket-3.1.0-1.linux-x86_64.rock

lua -e "require 'socket'"

echo "Step 3 is complete"


##**********************************************************************************
# 3、测试版本信息

# 3.1 捕捉异常
set -u

trap 'echo "Installation interrupted."; exit 1' SIGINT SIGTERM

# 3.2 删除文件
########################################################################
cleanup() {
    echo "Cleaning up..."

    rm -rf "/root/lua_new/lua-5.4.7.tar.gz"
    rm -rf "/root/lua_new/luarocks-3.11.1.tar.gz"
    rm -rf "/root/lua_new/luasocket-3.1.0-1.linux-x86_64.rock"

    #rm -rf /root/lua_new.zip
    # rm -rf /root/lua_new/lua-5.4.7.tar.gz /root/lua_new/luarocks-3.11.1.tar.gz /root/lua_new/luasocket-3.1.0-1.linux-x86_64.rock
    exit 1
}

trap cleanup ERR
########################################################################
# 3.3 完成输出

echo "sync..."

echo "LuaSocket installation completed successfully."

sync

exit 0