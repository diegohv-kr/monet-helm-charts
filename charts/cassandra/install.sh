export HELM_NAMESPACE=cassandra
helm package cassandra
# first time install. upgrades are in the notes file.
# do NOT do helm delete as it removes all the nodes.
# helm install monetization-cassandra ./cassandra --namespace cassandra

#uses files for configs - cleaner implementation
helm upgrade -f cassandra/values-stage-central.yaml monetization-cassandra cassandra -n cassandra