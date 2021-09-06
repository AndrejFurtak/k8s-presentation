#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

minikube dashboard `
	--profile=$profile
