export HELM_NAMESPACE=cassandra
helm package cassandra
# first time install. upgrades are in the notes file.
# do NOT do helm delete as it removes all the nodes.
helm install monetization-cassandra ./cassandra --namespace cassandra