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
```

### Step 04: Create the Service Principal by passing the values obtained from the previous step (appId, password, tenant).
```shell
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/{Subscription_ID}"
# az login --service-principal -u {appId/ClientId} -p {password/client_secret} --tenant {tenant}
```

### Step 05: Update the variables with value ****** in variables.tf
"subscription_id": id
"client_id": appId
"client_secret": password
"tenant_id": tenant

### Step 06: Execute the below terraform command to setup the AKS infrastructure on Azure Cloud
```shell
terraform init
terraform plan -out "plan.out"
terraform apply plan.out
```

### Step 07: 
