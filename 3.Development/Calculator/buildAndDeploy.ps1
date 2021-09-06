Param (
	[string]$profile = "local",
	[string]$kubeContext = "kubernetes-examples",
	[string]$repository = "registry.minikube"
)

Push-Location -Path "$PSScriptRoot"
skaffold run `
  --profile=$profile `
  --default-repo=$repository `
  --kube-context=$kubeContext `
  --cache-artifacts=false
Pop-Location
