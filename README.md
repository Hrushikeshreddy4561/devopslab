# DEVOPS LAB – DOCKER AND KUBERNETES EXPERIMENTS

---

# EXPERIMENT 1: Docker – Build and Run a Web Application

## Aim
To learn Dockerfile instructions and build a Docker image for a sample HTML web application.

## Files Required

```text
Docker-Experiment/
│
├── index.html
└── Dockerfile
```

## 1. Check Docker Installation

```bash
docker --version
```

## 2. Check Docker Information

```bash
docker info
```

## 3. Build Docker Image

```bash
docker build -t my-web-app:latest .
```

## 4. Check Docker Images

```bash
docker images
```

## 5. Run Docker Container

```bash
docker run -d -p 8081:80 --name my-container my-web-app:latest
```

## 6. Check Running Containers

```bash
docker ps
```

## 7. Check All Containers

```bash
docker ps -a
```

## 8. Open Web Application

Open the browser and enter:

```text
http://localhost:8081
```

## 9. View Container Logs

```bash
docker logs my-container
```

## 10. Access Container Terminal

```bash
docker exec -it my-container sh
```

To exit the container terminal:

```bash
exit
```

## 11. Stop Container

```bash
docker stop my-container
```

## 12. Start Container Again

```bash
docker start my-container
```

## 13. Remove Container

```bash
docker stop my-container
docker rm my-container
```

## 14. Remove Docker Image

```bash
docker rmi my-web-app:latest
```

## 15. Verify Image Removal

```bash
docker images
```

## Important Dockerfile Instructions

| Instruction | Purpose |
|---|---|
| FROM | Selects the base image |
| WORKDIR | Sets the working directory |
| COPY | Copies files into the image |
| EXPOSE | Documents the container port |
| RUN | Executes commands during image building |
| CMD | Specifies the default startup command |
| ENTRYPOINT | Specifies the main executable |

## Result

Successfully created a sample HTML web application, built a Docker image using a Dockerfile, and executed the application inside a Docker container.

---

# EXPERIMENT 2: Kubernetes – Deploy a Web Application Using Deployment and Service

## Aim

To deploy a containerized web application on a Kubernetes cluster using Deployment and Service YAML files and verify that the application is running successfully.

## Files Required

```text
Kubernetes-Experiment/
│
├── index.html
├── Dockerfile
├── deployment.yaml
└── service.yaml
```

## 1. Check Kubernetes Installation

```bash
kubectl version --client
```

## 2. Start Minikube Cluster

```bash
minikube start
```

## 3. Check Cluster Nodes

```bash
kubectl get nodes
```

## 4. Build Docker Image

```bash
docker build -t my-web-app:latest .
```

## 5. Load Docker Image into Minikube

```bash
minikube image load my-web-app:latest
```

## 6. Create Kubernetes Deployment

```bash
kubectl apply -f deployment.yaml
```

## 7. Create Kubernetes Service

```bash
kubectl apply -f service.yaml
```

## 8. Check Deployments

```bash
kubectl get deployments
```

## 9. Check Pods

```bash
kubectl get pods
```

## 10. Check Services

```bash
kubectl get services
```

## 11. View All Kubernetes Resources

```bash
kubectl get all
```

## 12. Describe Deployment

```bash
kubectl describe deployment my-web-deployment
```

## 13. View Pod Logs

```bash
kubectl logs POD_NAME
```

Replace POD_NAME with the actual Pod name displayed by:

```bash
kubectl get pods
```

## 14. Access Web Application

```bash
minikube service my-web-service --url
```

Copy the URL displayed in the terminal and open it in your browser.

Alternatively, use port forwarding:

```bash
kubectl port-forward service/my-web-service 8081:80
```

Open:

```text
http://localhost:8081
```

Keep the port-forward command running while accessing the application.

## 15. Delete Kubernetes Service

```bash
kubectl delete -f service.yaml
```

## 16. Delete Kubernetes Deployment

```bash
kubectl delete -f deployment.yaml
```

## 17. Verify Resource Deletion

```bash
kubectl get all
```

## 18. Stop Minikube Cluster

```bash
minikube stop
```

## Important Kubernetes Commands

| Command | Purpose |
|---|---|
| kubectl get nodes | Displays cluster nodes |
| kubectl get pods | Displays Pods |
| kubectl get deployments | Displays Deployments |
| kubectl get services | Displays Services |
| kubectl get all | Displays common resources |
| kubectl apply -f | Creates or updates resources |
| kubectl delete -f | Deletes resources |
| kubectl describe | Displays detailed information |
| kubectl logs | Displays Pod logs |

## Result

Successfully deployed a containerized HTML web application on a Kubernetes cluster using Deployment and Service YAML files and verified that the application was running successfully.

---

# IMPORTANT: Difference Between Docker and Kubernetes

| Docker | Kubernetes |
|---|---|
| Builds and runs containers | Manages containerized applications |
| Uses Dockerfile | Uses YAML configuration files |
| Creates Docker images | Deploys Pods and Services |
| Uses docker commands | Uses kubectl commands |
| Runs individual containers | Manages and scales application Pods |

# Quick Revision

### Docker – Main Commands

```bash
docker build -t my-web-app:latest .
docker images
docker run -d -p 8081:80 --name my-container my-web-app:latest
docker ps
docker logs my-container
docker stop my-container
docker rm my-container
docker rmi my-web-app:latest
```

### Kubernetes – Main Commands

```bash
minikube start
kubectl get nodes
docker build -t my-web-app:latest .
minikube image load my-web-app:latest
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get deployments
kubectl get services
kubectl get all
minikube service my-web-service --url
kubectl delete -f service.yaml
kubectl delete -f deployment.yaml
minikube stop
