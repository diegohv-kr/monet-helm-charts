kubectl run monetization-kafka-client --restart='Never' --image docker-remote.registry.kroger.com/bitnami/kafka:2.6.0-debian-10-r0 --namespace kafka --command -- sleep infinity
kubectl cp --namespace kafka ./client.properties monetization-kafka-client:/tmp/client.properties
kubectl cp --namespace kafka ./kafka_jaas.conf monetization-kafka-client:/tmp/kafka_jaas.conf
kubectl exec --tty -i monetization-kafka-client --namespace kafka -- bash

# ./kafka-topics.sh --zookeeper monetization-kafka-0.monetization-kafka-headless:9093 --create --topic monetization --partitions 3 --replication-factor 1