## Deploy an Sample Applicating on AKS, Implement integration between ArgoCD and AKS.
## Perform CI/CD for an Sample Application - webapp

![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/f970c433-3af0-4fef-8dfa-a7ef312b2d64)

### Step 01: Create a Namespace and Deploy the ArgoCD
```shell
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl get svc -n argocd
```
### Step 02: Log in to ArgoCD UI by following the below steps
[Log in to ArgoCD using the Public IP](HTTP://20.24.161.133)

![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/ca9ecc9a-9f36-4981-ace1-693db75e8c43)

### Step 03: Get the password using the below command, the username will be admin
```shell
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```
![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/5888bd3c-cafe-4f5a-b202-93b079e6c86d)

### Step 04: Deploy an application in Kubernetes using Argo CD
#### Step 4.1: Install ArgoCD CLI depending on your system
```shell
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64
```
```shell
argocd login 20.24.161.133:443
```
#### Step 4.2: Create a New Namespace
```shell
kubectl create ns argohelmtest
```
#### Step 4.3: Use ArgoCD CLI to create the new application on argocd
```shell
argocd app create helm-guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path helm-guestbook --dest-server https://kubernetes.default.svc --dest-namespace argohelmtest
```
#### Step 4.4: Check the status of the Application using CLI Command as well in ArgoCD UI
```shell
argocd app get helm-guestbook
```
![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/74e43ef7-4261-4679-ae43-5f5e80e8d7c5)

#### Step 4.5: Select the application and click on the SYNC
```shell
argocd app sync helm-guestbook
kubectl patch svc helm-guestbook -n argohelmtest -p '{"spec": {"type": "LoadBalancer"}}'
```
![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/dd7b2d8a-1a8d-4683-8a0f-f06848057b41)
![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/f9ce78ae-e2c2-4fa5-9695-ebcc73e0ec78)
![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/1a527168-baaf-4838-b288-a31ea8499a3c)

### Step 5: Create an App using a Manual Approach








