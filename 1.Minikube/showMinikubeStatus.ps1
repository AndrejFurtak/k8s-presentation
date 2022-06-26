#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

minikube status `
	--profile=$minikubeProfile
