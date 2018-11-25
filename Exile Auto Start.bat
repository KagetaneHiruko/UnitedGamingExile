@echo off
color 0a
title Exile Monitor
:Serverstart
echo Launching Server
F: 
cd "F:\SteamLibrary\steamapps\common\Arma_3_Server"
echo Exile Server Monitor... Active !
start "Arma3" /min /wait arma3server.exe -mod=@exile;Kart;Mark;Heli; -servermod=@exileserver; -config=F:\SteamLibrary\steamapps\common\Arma_3_Server\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=F:\SteamLibrary\steamapps\common\Arma_3_Server\@ExileServer\basic.cfg -name=SC -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Shutdown ... Restarting!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart