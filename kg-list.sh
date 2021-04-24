#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

$KAFKA/bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_BROKERS --list
