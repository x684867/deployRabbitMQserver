#!/bin/bash
#
# deployRabbitMQserver
# (c) 2014 Sam Caldwell.  MIT License.
#
# This project provides a method of deploying
# the RabbitMQ server.
#

apt-get update --fix-missing -y
apt-get upgrade -y
echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
apt-key add rabbitmq-signing-key-public.asc
apt-get update --fix-missing -y
apt-get install rabbitmq-server -y