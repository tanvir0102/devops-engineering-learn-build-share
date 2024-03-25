## [PREREQUISITE] [Before working on this Project, Please finish the AKS setup using Terraform](https://github.com/tanvir0102/devops-engineering-learn-build-share/tree/main/aks-iac-azure-using-terraform)
## Simplifying Kubernetes Logging with EFK Stack
Elasticsearch will be installed first as a Statefulset which will store all the data as indexed.

Fluend will be installed as a daemonset so that logs can be captured from all Nodes. 

Kibana will be installed as deployment so that it can invoke the Elasticsearch Server and run all the dashboards.
