#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

. docker context use $minikubeProfile
