# Azure Kubernetes Cluster Setup using Terraform

### Step 01: [PREREQUISITE] Create the Azure portal and install the VS Code, Terraform and AZ CLI

[Follow the URL to Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt)
[Follow the URL to Install Terraform](https://developer.hashicorp.com/terraform/install)

### Step 02: Execute the below command in the terminal, it will redirect you to the browser and you need to give code
```shell
# az login --use-device-code
```

### Step 03: Execute Below Commands 
```shell
# az account set --subscription="{Subscription_ID}"
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/{Subscription_ID}"
# az login --service-principal -u {appId/ClientId} -p {password/client_secret} --tenant {tenant}
```


