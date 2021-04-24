#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "km-produce.sh my-topic" &&
  echo "km-produce.sh my-topic --property parse.key=true --property key.separator=," &&
  exit 0

$KAFKA/bin/kafka-console-producer.sh --broker-list $KAFKA_BROKERS --topic $1 $2 $3 $4 $5 $6

#producer with keys
#kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic --property parse.key=true --property key.separator=,
#> key,value
#> another key,another value

