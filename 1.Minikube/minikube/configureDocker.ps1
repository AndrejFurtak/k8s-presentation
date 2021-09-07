#Requires -RunAsAdministrator

Param (
	[string]$profile = 'kubernetes-examples'
)

# set local environment variables
"SET USER ENVIRONMENT VARIABLES FOR MINIKUBE DOCKER HOST"

# set current process Docker host Env variables to minikube docker host
minikube docker-env `
	--profile=$profile `
	--shell=powershell `
	| Invoke-Expression

"New User Environment Variables:"
"	DOCKER_HOST = ${Env:DOCKER_HOST}"
"	DOCKER_CERT_PATH = ${Env:DOCKER_CERT_PATH}"
"	DOCKER_TLS_VERIFY = ${Env:DOCKER_TLS_VERIFY}"
"	MINIKUBE_ACTIVE_DOCKERD = ${Env:MINIKUBE_ACTIVE_DOCKERD}"

# set user Env variables for minikube docker host

[System.Environment]::SetEnvironmentVariable("DOCKER_HOST", "${Env:DOCKER_HOST}", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("DOCKER_CERT_PATH", "${Env:DOCKER_CERT_PATH}", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("DOCKER_TLS_VERIFY", "${Env:DOCKER_TLS_VERIFY}", [System.EnvironmentVariableTarget]::User)
[System.Environment]::SetEnvironmentVariable("MINIKUBE_ACTIVE_DOCKERD", "${Env:MINIKUBE_ACTIVE_DOCKERD}", [System.EnvironmentVariableTarget]::User)
