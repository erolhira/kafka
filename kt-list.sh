#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

$KAFKA/bin/kafka-topics.sh --zookeeper $ZOOKEEPER_URL --list
