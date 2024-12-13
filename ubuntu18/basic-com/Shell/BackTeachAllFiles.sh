#!/bin/bash

set -e  # 如果任何命令失败，脚本会停止执行

# 定义需要备份的目录
backup_dirs=(
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/database"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/log"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/nc"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/offlinetrack"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/plugins"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/procedure"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/project"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/recordtrack"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/resources"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/script"
    "/root/auborobotstudio/robotstudio/teachpendant/share/teachpendant/simulation"
)

# 临时备份目录
pro_export="/root/pro_export"
log_file="/root/backup_log.txt"

# 创建备份目录
mkdir -p "$pro_export"

# 清空日志文件（如果存在）
> "$log_file"

echo "开始备份文件..." | tee -a "$log_file"

# 遍历每个目录并检查是否存在，如果存在则复制到备份目录
for dir in "${backup_dirs[@]}"; do
    if [ -d "$dir" ]; then
        echo "备份目录：$dir" | tee -a "$log_file"
        # 使用 rsync 进行备份，避免不必要的覆盖
        rsync -av --ignore-existing "$dir" "$pro_export" >> "$log_file" 2>&1
        if [ $? -eq 0 ]; then
            echo "备份成功：$dir" | tee -a "$log_file"
        else
            echo "备份失败：$dir" | tee -a "$log_file"
        fi
    else
        echo "警告：目录不存在，跳过：$dir" | tee -a "$log_file"
    fi
done

# 生成压缩包
backup_filename="teachpendant_backup_$(date +%Y%m%d%H%M%S).tar.gz"
echo "创建压缩包..." | tee -a "$log_file"
tar -czf "/root/$backup_filename" -C /root pro_export >> "$log_file" 2>&1

# 检查 tar 创建是否成功
if [ $? -eq 0 ]; then
    echo "备份成功，压缩包保存在：/root/$backup_filename" | tee -a "$log_file"
else
    echo "错误：创建压缩包失败。" | tee -a "$log_file"
    exit 1
fi

# 删除临时备份文件夹
echo "删除临时文件..." | tee -a "$log_file"
rm -rf "$pro_export"

# 确保所有更改已写入磁盘
echo "同步文件系统..." | tee -a "$log_file"
sync

echo "备份过程完成。" | tee -a "$log_file"
exit 0
