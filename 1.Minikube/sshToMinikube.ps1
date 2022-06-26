#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

minikube ssh `
	--profile=$minikubeProfile