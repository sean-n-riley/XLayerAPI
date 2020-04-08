@echo off
TITLE MariaDB for XLayerAPI

echo "Starting MariaDB Docker Container ... "
echo.

d:
cd \code\XLayerAPI\mariadb

docker-compose up
