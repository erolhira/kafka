# kafka-utils

kafka-utils is a command line utility that leverages kafka cli and aims to make it more convenient and easy to use.

# Installation
- export KAFKA_HOME=[define your kafka home directory]
- export KAFKA_UTILS_HOME=[define your installation directory]
- cd $KAFKA_UTILS_HOME
- git clone https://github.com/erolhira/kafka-utils.git
- Make proper configurations for kafka brokers and zookeeper in kafka_env.sh.
- echo "export KAFKA_UTILS=$KAFKA_UTILS_HOME/kafka-utils" >> ~/.bashrc
- echo "export PATH=$KAFKA_UTILS:$PATH" >> ~/.bashrc
- echo "export PATH=$KAFKA_HOME/bin:$PATH" >> ~/.bashrc
- cd $KAFKA_UTILS_HOME
- chmod +x *.sh

