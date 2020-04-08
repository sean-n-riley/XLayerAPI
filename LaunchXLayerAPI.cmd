@echo off
CLS
:MENU
echo.
echo =================================
echo  Press 1,2 to select which
echo  database container to start 
echo  or press 3 to EXIT
echo =================================
echo.
echo 1 - MariaDB
echo 2 - MS SQL Express
echo 3 - EXIT
echo.
SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO MARIADB
IF %M%==2 GOTO MSSQLEXPRESS
IF %M%==3 GOTO EOF

:MARIADB
echo Starting MariaDB Docker
start /D D:\code\XLayerAPI\mariadb\ StartMariaDB.cmd
goto KAFKA

:MSSQLEXPRESS
echo Starting MSSQLExpress Docker
start /D D:\code\XLayerAPI\sqlexpress\ StartSQLExpressa.cmd
goto KAFKA

:KAFKA
echo Starting Kafka Docker
start /D D:\code\XLayerAPI\kafka\ StartKafka.cmd
start java -jar "D:\code\XLayerAPI\kafka\Conduktor-1.0.jar"
GOTO EOF