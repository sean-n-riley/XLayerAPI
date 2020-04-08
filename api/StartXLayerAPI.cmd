@echo off
TITLE XLayerAPI - The APP

echo "Starting the XLayer API Docker Container ... "
echo.

d:
cd \code\XLayerAPI\api

docker-compose up
