@echo off
TITLE Kakfa/Zookeeper for XLayerAPI

echo "Starting Zookeeper and Kafka Docker Containers ... "
echo.

d:
cd \code\XLayerAPI\kafka

docker-compose up
