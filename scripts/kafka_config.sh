#!/bin/bash

#kafka server config
sed -i "s/broker.id=0/broker.id=$1/" $KAFKA_HOME/config/server.properties
sed -i "s/#host.name=localhost/host.name=$NODE_NAME_PREFIX$1/" $KAFKA_HOME/config/server.properties
sed -i "$ a host.name=$NODE_NAME_PREFIX$1" $KAFKA_HOME/config/server.properties
sed -i '$ a delete.topic.enable = true' $KAFKA_HOME/config/server.properties
sed -i "s/#advertised.host.name=<hostname routable by clients>/advertised.host.name=$NODE_NAME_PREFIX$1/" $KAFKA_HOME/config/server.properties
sed -i "s/localhost:2181/$ZK_NODES/" $KAFKA_HOME/config/server.properties