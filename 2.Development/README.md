# Development example

Contains just simple services with Dockerfiles and scripts required for building service docker images.


## Prerequisities

You have finished previous examples so the Minikube HyperV VM with k8s is running.
Run:
  1.Minikube/createMinikube.ps1

Your local machine docker cli context is configured to docker-machine running inside minikube.
Run:
  1.Minikube/createMinikubeDockerContext.ps1
  1.Minikube/useMinikubeDockerContext.ps1

Your VisualStudio 2022/2019 contanis installed extension "Bridge to Kuberentes" for latter debugging.


## Build and push docker images of services

Run: services/buildAll.ps1


## ExampleServices

### Calculator service

Example service exposing endpoints for calculation operations.  
Just add and subtract for now.
