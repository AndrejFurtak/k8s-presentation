#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

"DELETE MINIKUBE VIRTUAL MACHINE"
""
minikube delete `
	--profile=$minikubeProfile