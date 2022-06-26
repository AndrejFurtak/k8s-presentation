#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

minikube dashboard `
	--profile=$minikubeProfile
