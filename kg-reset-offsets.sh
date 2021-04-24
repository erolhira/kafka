#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "kg-reset-offsets.sh my-group my-topic --to-earliest" &&
  echo "kg-reset-offsets.sh my-group my-topic --shift-by 2" && #shift offset of each partition by 2
  echo "kg-reset-offsets.sh my-group my-topic --shift-by -2" && #shift offset of each partition by -2
  exit 0

equals $1 "--help" &&
  $KAFKA/bin/kafka-consumer-groups.sh &&
  exit 0

$KAFKA/bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_BROKERS --group $1 --execute --topic $2 --reset-offsets $3 $4 $5 $6

