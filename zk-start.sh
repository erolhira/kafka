#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

$KAFKA/bin/zookeeper-server-start.sh $KAFKA/config/zookeeper.properties
