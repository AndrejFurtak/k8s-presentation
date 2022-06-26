#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

"STOP MINIKUBE VIRTUAL MACHINE"
minikube stop `
	--profile=$minikubeProfile