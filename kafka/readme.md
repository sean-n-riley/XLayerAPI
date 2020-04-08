#Interact with Kafka in Docker
==============================

https://jaceklaskowski.gitbooks.io/apache-kafka/kafka-docker.html


List all the Topics
===================

	docker exec -t xlayer-api-kafka1 /usr/bin/kafka-topics --zookeeper zoo1:2181 --list

	docker exec -t xlayer-api-kafka1 /usr/bin/kafka-topics --zookeeper zoo1:2181 --topic cmdLineTest --describe

Create a new Topic
==================

	docker exec -t xlayer-api-kafka1 /usr/bin/kafka-topics --zookeeper zoo1:2181 --partitions=3 --replication-factor=1 --create --topic cmdLineTest

Write to Topic (Producer)
=========================

	docker exec -it xlayer-api-kafka1 /usr/bin/kafka-console-producer --broker-list 127.0.0.1:9092 --topic cmdLineTest --producer-property acks=all

Read from a Topic (Consumer)
============================

	docker exec -it xlayer-api-kafka1 /usr/bin/kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic cmdLineTest


===================================================================================

Taken from:

https://www.e4developer.com/2018/05/20/how-to-easily-run-kafka-with-docker-for-development/

Setup Docker Network:
=====================

	docker network create kafka

Run Zookeeper:
==============

	docker run –-net=kafka -d –-name=zookeeper -e ZOOKEEPER_CLIENT_PORT=2181 confluentinc/cp-zookeeper:4.1.0

Run Kafka:
==========

	docker run –-net=kafka -d -p 9092:9092 –-name=xlayer-api-kafka1 -e KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://kafka:9092 -e KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 confluentinc/cp-kafka:4.1.0

