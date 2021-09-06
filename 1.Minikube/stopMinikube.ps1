#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

"STOP MINIKUBE VIRTUAL MACHINE"
minikube stop `
	--profile=$profile