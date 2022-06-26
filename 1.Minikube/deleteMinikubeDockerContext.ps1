#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

. docker context rm $minikubeProfile
