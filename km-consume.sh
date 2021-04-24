#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "km-consume.sh my-topic" &&
  echo "km-consume.sh my-topic --from-beginning" &&
  echo "km-consume.sh my-topic --group my-application" &&
  echo "km-consume.sh my-topic --group my-application --property print.key=true --property key.separator=," &&
  exit 0

$KAFKA/bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_BROKERS --topic $1 $2 $3 $4 $5 $6 $7 $8 $9

#consumer with keys
#kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning --property print.key=true --property key.separator=,