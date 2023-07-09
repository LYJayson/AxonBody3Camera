fx_version 'adamant'

game 'gta5'

author 'Jayson'
description '"AxonBody3Camera" developed by Jayson for the second time'
version '1.2.2'


client_scripts {    --客户端的脚本
   'client/RCPMenu.lua',
   'client/AxonBody3Record.Client.net.dll'
}

ui_page 'html/RCPMenu.html'

files{
   'com/Jayson/record/fxbase/*.class',
   'ffmpeg-master-latest-win64-gpl/bin/*.exe',
   'html/RCPMenu.html'
}