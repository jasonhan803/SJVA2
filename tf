#!name=❏ 自动测试
#!desc=自动加入公测TF应用并关闭本脚本模块
#!system=ios

[Script]
#信息获取 = type=http-request,pattern=^https:\/\/testflight\.apple\.com\/v3\/accounts/.*\/apps$,requires-body=0,script-path=https://raw.githubusercontent.com/DecoAri/JavaScript/main/Surge/TF_keys.js
加入测试 = type=cron,cronexp="*/10 * * * * *",script-path=https://raw.githubusercontent.com/githubdulong/Script/master/Auto_join_TF.js,wake-system=0,timeout=180

[MITM]
hostname = %APPEND% testflight.apple.com
