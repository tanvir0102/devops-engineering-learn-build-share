### kubectl apply commands in order
    
    kubectl apply -f mongo-secret.yml
    kubectl apply -f mongo.yml
    kubectl apply -f mongo-configmap.yml 
    kubectl apply -f mongo-express.yml

### kubectl get commands

    kubectl get pod
    kubectl get pod --watch
    kubectl get pod -o wide
    kubectl get service
    kubectl get secret
    kubectl get all | grep mongodb

### kubectl debugging commands

    kubectl describe pod mongodb-deployment-xxxxxx
    kubectl describe service mongodb-service
    kubectl logs mongo-express-xxxxxx

### give a URL to external service in minikube

    minikube service mongo-express-service