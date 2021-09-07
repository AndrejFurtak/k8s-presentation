#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

"MINIKUBE IP"
minikube ip `
	--profile=$profile 
