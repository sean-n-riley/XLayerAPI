@echo off
TITLE MSSQLExpress for XLayerAPI

echo "Starting MSSQLExpress Docker Container ... "
echo.

d:
cd \code\XLayerAPI\sqlexpress

docker-compose up
