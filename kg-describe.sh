#!/bin/bash

source $KAFKA_UTILS/kafka_env.sh

is_empty $1 &&
  echo "usage:" &&
  echo "kg-describe.sh my-group" &&
  exit 0

$KAFKA/bin/kafka-consumer-groups.sh --bootstrap-server $KAFKA_BROKERS --describe --group $1

#Consumer group 'my-app' has no active members.
#This means no consumer consumes over this group

#GROUP     TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG    CONSUMER-ID     HOST     CLIENT-ID
#my-app    first_topic     0          2               3               1      -               -        -
#my-app    first_topic     1          2               2               0      -               -        -


#current-offset --> the current offset we have been reading.
#lag 0 means; the console consumer is reading and it has read all the data.

#lag is the count of messages to be read in the partition inside of a group.
#lag = log-end-offset - current-offset