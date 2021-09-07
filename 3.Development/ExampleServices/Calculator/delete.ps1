Param (
	[string]$profile = "local",
	[string]$kubeContext = "kubernetes-examples"
)

Push-Location -Path "$PSScriptRoot"
skaffold delete `
  --profile=$profile `
  --kube-context=$kubeContext
Pop-Location
