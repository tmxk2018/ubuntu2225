#!/bin/bash
set -e

##**********************************************************************************
# 1. 准备目录

folder_lua_new="/root/lua_new"
folder_lua5="$folder_lua_new/lua-5.4.7"
folder_luarocks="$folder_lua_new/luarocks-3.11.1"

# 创建目录
mkdir -p "$folder_lua5"
mkdir -p "$folder_luarocks"

## -------------------------------------------------------------------------------
# 解压文件
cd "$folder_lua_new" || { echo "Error: Directory '$folder_lua_new' does not exist or cannot be accessed."; exit 1; }

# 复制并解压文件
cp /root/lua_new.zip "$folder_lua_new"

unzip -oq lua_new.zip -d "$folder_lua_new" || { echo "Error: Failed to unzip 'lua_new.zip'."; exit 1; }

extract_tarA() {
    tar -zvxf lua-5.4.7.tar.gz -C "$folder_lua_new" || return 1
    tar -zxvf luarocks-3.11.1.tar.gz -C "$folder_lua_new" || return 1
    echo "The decompression is complete"
}

# 尝试解压文件
if ! extract_tarA; then
    echo "Error: Failed to extract the files."
    exit 1
fi

##**********************************************************************************

# 2. 编译和安装

## 2.1 安装 Lua
cd "$folder_lua5" || { echo "Error: Directory '$folder_lua5' does not exist or cannot be accessed."; exit 1; }
make linux || { echo "Error: Failed to build Lua."; exit 1; }
make install || { echo "Error: Failed to install Lua."; exit 1; }

echo "Step 1 is complete"

## 2.2 安装 Luarocks
cd "$folder_luarocks" || { echo "Error: Directory '$folder_luarocks' does not exist or cannot be accessed."; exit 1; }
make || { echo "Error: Failed to build Luarocks."; exit 1; }
make install || { echo "Error: Failed to install Luarocks."; exit 1; }

luarocks build || { echo "Error: Failed to build Luarocks modules."; exit 1; }

echo "Step 2 is complete"

## 2.3 安装 LuaSocket
cd "$folder_lua_new" || { echo "Error: Directory '$folder_lua_new' does not exist or cannot be accessed."; exit 1; }
cp -rf luasocket-3.1.0-1.linux-x86_64.rock "$folder_luarocks" || { echo "Error: Failed to copy LuaSocket rock."; exit 1; }
cd "$folder_luarocks" || { echo "Error: Directory '$folder_luarocks' does not exist or cannot be accessed."; exit 1; }
luarocks install luasocket-3.1.0-1.linux-x86_64.rock || { echo "Error: Failed to install LuaSocket."; exit 1; }

lua -e "require 'socket'" || { echo "Error: LuaSocket module failed to load."; exit 1; }

echo "Step 3 is complete"

##**********************************************************************************
# 3. 清理和完成

cleanup() {
    echo "Cleaning up..."
    rm -f "$folder_lua_new/lua-5.4.7.tar.gz"
    rm -f "$folder_lua_new/luarocks-3.11.1.tar.gz"
    rm -f "$folder_lua_new/luasocket-3.1.0-1.linux-x86_64.rock"
    exit 1
}

trap cleanup ERR
trap 'echo "Installation interrupted."; exit 1' SIGINT SIGTERM

echo "sync..."
sync
echo "LuaSocket installation completed successfully."

exit 0
