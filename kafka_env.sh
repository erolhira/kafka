export KAFKA=/home/erol/dev/prgrm/kafka_2.13-2.7.0
export ZOOKEEPER_URL=127.0.0.1:2181
export KAFKA_BROKERS=127.0.0.1:9092

function is_empty() {
    if [[ -z "$1" ]]; then
      return 0
    else
      return 1
    fi
}

function equals() {
    if [[ "$1" -eq "$2" ]]; then
      return 0
    else
      return 1
    fi
}