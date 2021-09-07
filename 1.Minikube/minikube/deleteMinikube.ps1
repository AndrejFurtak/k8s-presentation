#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

"DELETE MINIKUBE VIRTUAL MACHINE"
minikube delete `
	--profile=$profile