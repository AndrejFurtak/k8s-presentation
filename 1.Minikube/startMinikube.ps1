#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

"START MINIKUBE VIRTUAL MACHINE"
minikube start `
	--profile=$minikubeProfile `
	--driver=hyperv `
	--wait all
