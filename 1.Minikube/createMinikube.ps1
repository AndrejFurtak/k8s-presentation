#Requires -RunAsAdministrator

Param (
	[int]$cpus = 2,
	[string]$diskSize = '5000mb',
	[string]$memory = '4g',
	[string]$minikubeProfile = 'minikube',
	[int]$nodes = 1 # needs to be 1 for now
)

"CREATE MINIKUBE VIRTUAL MACHINE"
minikube start `
	--profile=$minikubeProfile `
	--driver=hyperv `
	--cpus=$cpus `
	--disk-size=$diskSize `
	--memory=$memory `
	--docker-opt=dns=8.8.8.8 `
	--service-cluster-ip-range='10.96.0.0/12' `
	--insecure-registry='10.96.0.0/12' `
	--nodes=$nodes `
	--addons=ingress,registry,registry-aliases,metrics-server,dashboard `
	--keep-context=false `
	--wait all

minikube profile $minikubeProfile
