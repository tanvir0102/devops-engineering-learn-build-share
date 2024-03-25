## [PREREQUISITE] [Before working on this Project, Please finish the AKS setup using Terraform](https://github.com/tanvir0102/devops-engineering-learn-build-share/tree/main/aks-iac-azure-using-terraform)
## Simplifying Kubernetes Logging with EFK Stack
Elasticsearch will be installed first as a Statefulset which will store all the data as indexed.

Fluend will be installed as a daemonset so that logs can be captured from all Nodes. 

Kibana will be installed as deployment so that it can invoke the Elasticsearch Server and run all the dashboards.

### Step 01: Setup/Install Elasticsearch on AKS Cluster
```shell
cd elasticsearch
kubectl create -f statefulset.yaml
kubectl create -f service.yaml
```

### Step 02: Setup/Install Kibana on AKS Cluster
```shell
cd kibana
kubectl create -f deployment.yaml
kubectl create -f service.yaml
```

### Step 03: Setup/Install Fluentd on AKS Cluster
```shell
cd fluentd
kubectl create -f clusterrole.yaml
kubectl create -f serviceaccount.yaml
kubectl create -f clusterrolebinding.yaml
kubectl create -f daemonset.yaml
```

### Step 04: Validate the EFK Cluster
Run one pod in the same namespace to capture the logs on cluster
```shell
kubectl run nginx --image=nginx --restart=Never
kubectl run mycurlpod --image=curlimages/curl -i --tty -- sh
```

### Step 05: Use below commands to perform PORT FORWARDING and access the Elasticsearch and Kibana from Browser
```shell
kubectl port-forward svc/elasticsearch 9200
kubectl port-forward svc/kibana 8080
