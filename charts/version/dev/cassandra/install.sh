export HELM_NAMESPACE=cassandra
helm package cassandra
# first time install. upgrades are in the notes file.
helm install monetization-cassandra ./cassandra --namespace cassandra