@echo off
color 0a
title Exile Monitor
:Serverstart
echo Launching Server
S:
cd "S:\a3exile"
echo Exile Server Monitor... Active !
start "Arma3" /min /wait arma3server.exe -mod=@exile;Kart;Mark;Heli;@CBA_A3;@Enhanced_Movement;@Extended_Base_Mod;@Fox_SurvivalCars;@NIArms_All_in_One;@Zombies_and_Demons;  -servermod=@exileserver; -config=S:\a3exile\@ExileServer\config.cfg -port=2302 -profiles=SC -cfg=S:\a3exile\@ExileServer\basic.cfg -name=SC -autoinit
ping 127.0.0.1 -n 15 >NUL
echo Exile Server Shutdown ... Restarting!
ping 127.0.0.1 -n 5 >NUL
cls
goto Serverstart