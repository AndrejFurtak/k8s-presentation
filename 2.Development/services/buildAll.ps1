Param (
	[string]$registry = "registry.minikube",
	[bool]$push = $true
)

& $PSScriptRoot/Calculator.Api/build.ps1 `
  -registry "$registry" `
  -push $push