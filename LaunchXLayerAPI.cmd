@echo off
echo.
echo Starting MariaDB Docker Container
echo =================================
echo.
echo Starting MariaDB Docker
start /D D:\code\XLayerAPI\mariadb\ StartMariaDB.cmd
echo.
echo Starting Kafka Docker
start /D D:\code\XLayerAPI\kafka\ StartKafka.cmd
echo.
echo =================================

pause