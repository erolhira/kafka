#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "kt-describe.sh my-topic" &&
  exit 0

$KAFKA/bin/kafka-topics.sh --zookeeper $ZOOKEEPER_URL --topic $1 --describe 
