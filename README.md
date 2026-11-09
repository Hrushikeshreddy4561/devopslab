# Docker Lab Experiment – Build and Run a Web Application

## 1. Check Docker installation

```bash
docker --version
```

## 2. Build Docker Image

```bash
docker build -t my-web-app .
```

## 3. Check Docker Images

```bash
docker images
```

## 4. Run Docker Container

```bash
docker run -d -p 8081:80 --name my-container my-web-app
```

## 5. Check Running Containers

```bash
docker ps
```

## 6. Check All Containers

```bash
docker ps -a
```

## 7. Open Web Application

Open your browser and enter:

```text
http://localhost:8081
```

## 8. View Container Logs

```bash
docker logs my-container
```

## 9. Stop Container

```bash
docker stop my-container
```

## 10. Start Container Again

```bash
docker start my-container
```

## 11. Remove Container

```bash
docker stop my-container
docker rm my-container
```

## 12. Remove Docker Image

```bash
docker rmi my-web-app
```

## 13. Verify Image Removal

```bash
docker images
```

## Additional Useful Commands

### View Docker version

```bash
docker version
```

### View Docker information

```bash
docker info
```

### View container logs

```bash
docker logs -f my-container
```

### Access container terminal

```bash
docker exec -it my-container sh
```

### View all containers (including stopped)

```bash
docker ps -a
```

### Remove all stopped containers

```bash
docker container prune
```

### Remove unused images

```bash
docker image prune
```

## Important Dockerfile Commands

| Instruction | Purpose |
|---|---|
| FROM | Selects the base image |
| WORKDIR | Sets working directory |
| COPY | Copies files into the image |
| EXPOSE | Documents the container port |
| RUN | Executes commands during image building |
| CMD | Specifies the default startup command |
| ENTRYPOINT | Specifies the main executable |

## Result

Successfully created a sample HTML web application, built a Docker image using a Dockerfile, and executed the application inside a Docker container.
