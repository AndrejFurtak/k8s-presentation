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

Run ./startMinikube.ps1 script. 

Will create HyperV Linux VM with running Kubernetes inside Docker.
Will configure Windows OS Docker CLI environment variables to communicate with Docker inside VM.


## Stop Minikune VM

Run ./stopMinikube.ps1 script. 


## Delete/Destroy Minikune VM

Run ./deleteMinikube.ps1 script. 


## Show Minikube status

Run ./showMinikubeStatus.ps1 script. 


## Show Minikube IP

Run ./showMinikubeIp.ps1 script. 


## Start Minikube Kubernetes dashboard

Run ./startDashboard.ps1 script. 


## Communication with Kubernetes

Communication is done through kubectl CLI.

Check subdirectory ./tools. Contains various scripts for execution required opertions.

