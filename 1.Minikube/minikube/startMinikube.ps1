#Requires -RunAsAdministrator

Param (
	[int]$cpus = 2,
	[string]$diskSize = '10000mb',
	[string]$memory = '2g',
	[string]$profile = 'kubernetes-examples',
	[string]$namespace = 'kubernetes-examples',
	[int]$nodes = 1 # needs to be 1
)

"CREATE MINIKUBE VIRTUAL MACHINE"
minikube start `
	--profile=$profile `
	--driver=hyperv `
	--cpus=$cpus `
	--disk-size=$diskSize `
	--memory=$memory `
	--service-cluster-ip-range='10.96.0.0/12' `
	--insecure-registry='10.96.0.0/12' `
	--nodes=$nodes `
	--namespace=$namespace `
	--addons=ingress,registry,registry-aliases,metrics-server,dashboard `
	--keep-context=false `
	--wait all

kubectl create namespace "$namespace"

& $PSScriptRoot\configureDocker.ps1 -profile $profile
