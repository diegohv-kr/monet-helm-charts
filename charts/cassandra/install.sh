export HELM_NAMESPACE=cassandra
helm package cassandra
# first time install. upgrades are in the notes file.
# do NOT do helm delete as it removes all the nodes.
# helm install monetization-cassandra ./cassandra --namespace cassandra

#uses files for configs - cleaner implementation
# helm upgrade -f cassandra/values.yaml monetization-cassandra cassandra -n cassandra --dry-run
helm upgrade -f cassandra/values-prod-central-rpd.yaml monetization-cassandra cassandra -n cassandra
# helm upgrade --set config.cluster_size=4 --set persistence.size=5Gi monetization-cassandra cassandra -n cassandra

# we can restart the replicas of StatefulSet to take last changes through kubectl
#kubectl rollout restart statefulset monetization-cassandra -n cassandra
