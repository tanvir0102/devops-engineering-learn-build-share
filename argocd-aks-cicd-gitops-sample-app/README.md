## Deploy an Sample Applicating on AKS, Implement integration between ArgoCD and AKS.
## Perform CI/CD for an Sample Application - webapp

![image](https://github.com/tanvir0102/devops-engineering-learn-build-share/assets/8452040/f970c433-3af0-4fef-8dfa-a7ef312b2d64)

### Step 01: Create a Namespace and Deploy the ArgoCD
```shell
# kubectl create namespace argocd
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
