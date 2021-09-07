# Minikube example

Contains powershell scripts for managing minikube lifecycle and utility scripts for communication with Minikube.


## Prerequisities

It is required to enable HyperV inside Windows OS.

It is required to install some CLIs for manipulation and communication with Minikube and Docker.

1. Install chocolatey package manager for Windows. https://chocolatey.org/install

2. Run ./installTools.ps1 script.

  Will install:
   - minikube cli
   - docker cli


## Create/Start Minikune VM

Run ./minikube/startMinikube.ps1 script. 

Will create HyperV Linux VM with running Kubernetes inside Docker.

WARNING: Will configure Windows OS Docker CLI environment variables to communicate with Docker inside VM.


## Stop Minikube VM

Run ./minikube/stopMinikube.ps1 script. 


## Delete/Destroy Minikube VM

Run ./minikube/deleteMinikube.ps1 script. 


## Configure local Docker CLI through environment variables

Run ./minikube/configureDocker.ps1 script.

Will set following user environment variables.
 - DOCKER_HOST
 - DOCKER_CERT_PATH
 - DOCKER_TLS_VERIFY
 - MINIKUBE_ACTIVE_DOCKERD

This variables are used by Docker CLI as default configuration source for Docker Host connection.


## Show Minikube status

Run ./minikube/showMinikubeStatus.ps1 script. 


## Show Minikube IP

Run ./minikube/showMinikubeIp.ps1 script. 


## Start Minikube Kubernetes dashboard

Run ./minikube/startDashboard.ps1 script. 


## Communication with Kubernetes

Communication is done through kubectl CLI.

Check subdirectory ./tools. Contains various scripts for execution required opertions.

