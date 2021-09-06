#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

minikube status `
	--profile=$profile
