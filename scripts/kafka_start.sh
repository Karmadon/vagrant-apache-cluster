#!/bin/bash

#bootstrap server
if [ $# -gt 0 ]; then
    echo "Starting kafka Broker #$1"
   JMX_PORT=10101 $KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties
else
    echo "Usage: "$(basename $0)" <broker_id>"
fi