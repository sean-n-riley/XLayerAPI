@echo off
CLS
call "cmd /c docker network create -d bridge xlayerapi"
:MENU
echo.
echo =================================
echo  Press 1,2,3,4 to select which
echo  database container to start 
echo  or press 5 to EXIT
echo =================================
echo.
echo 1 - MariaDB
echo 2 - MS SQL Express
echo 3 - Kafka
echo 4 - Conduktor 1.0
echo 5 - XLayer API
echo 6 - EXIT
echo.
SET /P M=Type 1, 2, 3, 4 or 5 then press ENTER:
IF %M%==1 GOTO MARIADB
IF %M%==2 GOTO MSSQLEXPRESS
IF %M%==3 GOTO KAFKA
IF %M%==4 GOTO CONDUKTOR
IF %M%==5 GOTO API
IF %M%==6 GOTO EOF

:MARIADB
echo Starting MariaDB Docker
start /D D:\code\XLayerAPI\mariadb\ StartMariaDB.cmd
cls
goto MENU

:MSSQLEXPRESS
echo Starting MSSQLExpress Docker
start /D D:\code\XLayerAPI\sqlexpress\ StartSQLExpressa.cmd
cls
goto MENU

:KAFKA
echo Starting Kafka Docker
start /D D:\code\XLayerAPI\kafka\ StartKafka.cmd
cls
goto MENU

:CONDUKTOR
echo Starting Conduktor 1.0
start java -jar "D:\code\XLayerAPI\kafka\Conduktor-1.0.jar"
cls
goto MENU

:API
echo Starting XLayer API Docker
start /D D:\code\XLayerAPI\api\ StartXLayerAPI.cmd
cls
goto MENU

:EOF