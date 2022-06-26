#Requires -RunAsAdministrator

Param (
	[string]$minikubeProfile = 'minikube'
)

$dockerHost = $Env:DOCKER_HOST
$dockerPath = $Env:DOCKER_CERT_PATH
$dockerVerify = $Env:DOCKER_TLS_VERIFY
$activeDockerd = $Env:MINIKUBE_ACTIVE_DOCKERD

try {
	# set current process Docker host Env variables to minikube docker host
	minikube docker-env `
		--profile=$minikubeProfile `
		--shell=powershell `
		| Invoke-Expression

	. docker context create $minikubeProfile `
		--docker "host=${Env:DOCKER_HOST},ca=${Env:DOCKER_CERT_PATH}/ca.pem,cert=${Env:DOCKER_CERT_PATH}/cert.pem,key=${Env:DOCKER_CERT_PATH}/key.pem"
}
finally
{
	$Env:DOCKER_HOST = $dockerHost 
	$Env:DOCKER_CERT_PATH = $dockerPath 
	$Env:DOCKER_TLS_VERIFY = $dockerVerify 
	$Env:MINIKUBE_ACTIVE_DOCKERD = $activeDockerd 
}
