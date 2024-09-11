@echo off
REM Forge requires a configured set of both JVM and program arguments.
REM Add custom JVM arguments to the user_jvm_args.txt
REM Add custom program arguments {such as nogui} to this file in the next line before the %* or
REM  pass them to this script directly
@echo off
cls
echo ------------------------------------------------
echo Starting the Yao Pack 3 server!
echo Depending on the server hardware, this can take a few minutes.
echo ------------------------------------------------
echo ~Useful commands to operate the server with (Execute them in this command prompt window without the quation marks)~
echo 'stop' - Restarts the server and saves the worlds and all player information.
echo 'save-all' - Saves all player information
echo 'op username' - Replace 'username' with the player's name and that player will become a server operator with access to cheats.
echo THIS VERSION OF MINECRAFT REQUIRES JAVA 17 TO RUN. THE SERVER WILL NOT START IF YOU DON'T HAVE JAVA 8 INSTALLED ON YOUR HOST MACHINE!
echo ------------------------------------------------
title Yao Pack 3 Server
TIMEOUT /T 1
:StartServer
java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.19.2-43.2.21/win_args.txt %* nogui
echo (%time%) Server closed/crashed... restarting!
goto StartServer