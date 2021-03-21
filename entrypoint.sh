#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
#refreshing Rclone
rclone version
mkdir '/root/.config/rclone'
cd '/root/.config/rclone/'
aria2c $config_url
mv 'rclone.conf' '/root/.config/rclone/rclone.conf'
rclone serve http $Remote_drive_name : -vvv