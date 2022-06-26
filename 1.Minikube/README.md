# Minikube example

Contains powershell scripts for managing minikube lifecycle and utility scripts for communication with Minikube.


## Prerequisities

It is required to enable HyperV feature inside Windows.

It is required to install some CLIs.

1. Install chocolatey package manager for Windows. https://chocolatey.org/install

2. Run ./installTools.ps1 script which will install:
   - minikube cli
   - docker cli


## Create/Start Minikune VM

Run ./minikube/createMinikube.ps1 script. 

Will create Minikube HyperV VM.
Iniside HyperV VM will run docker service.
And inside docker will run all required k8s services composing together k8s.


## Create docker CLI context for minikube docker service

Run ./minikube/configureLocalDockerCli.ps1 script.

Will create minikube docker context linking to docker machine inside minikube HyperV VM.
Will be used for building and publishing docker images latter.


## Set docker minikube context

Run ./minikube/useDockerContext.ps1 script.

Set current docker context to minikube context.
Basically docker cli will be configured to communicate with docker machine inside minikube HyperV VM.
Will be used for building and publishing docker images latter.


## Delete docker minikube cotext

Run ./minikube/deleteDockerContext.ps1 script.

Will remove minikube docker cli context.


## Stop Minikube VM

Run ./minikube/stopMinikube.ps1 script. 


## Destroy Minikube VM

Run ./minikube/deleteMinikube.ps1 script. 


## Show Minikube status

Run ./minikube/showMinikubeStatus.ps1 script. 


## Start Minikube Kubernetes dashboard

Run ./minikube/startDashboard.ps1 script. 


## Communication with Kubernetes

Communication is done through kubectl CLI.

Check subdirectory ./tools. 
Contains various scripts for execution required operations.
