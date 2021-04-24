#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

$KAFKA/bin/kafka-server-start.sh $KAFKA/config/server.properties
