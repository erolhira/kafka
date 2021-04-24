#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "kt-create.sh my-topic" &&
  exit 0

$KAFKA/bin/kafka-topics.sh --zookeeper $ZOOKEEPER_URL --topic $1 --create --partitions 3 --replication-factor 1 
