# Cassandra Compaction Management Helm Chart

## Overview

This Helm chart automates the management of compaction throughput for a Cassandra StatefulSet in Kubernetes. It includes CronJobs to increase and decrease compaction throughput and to perform specific table compactions on a schedule.

## Prerequisites

- Kubernetes 1.12+
- Helm 3.0+
- Access to a Kubernetes cluster where we have permissions to deploy Helm charts.

## Installation

1. **Move to cassandra-compaction-chart directory:**

   ```bash
   cd cassandra-compaction-chart

1. **Deploy the Chart:**

   ```bash
   ./install.sh [environment]-values.yaml

Replace [environment] with the appropriate environment name, like dev, stage-east, etc.

2. **Uninstall helm Chart:**
helm uninstall cassandra-compaction-chart -n cassandra
