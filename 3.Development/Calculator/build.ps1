Param (
	[string]$profile = "local",
	[string]$repository = "registry.minikube",
	[string]$fileOutput = "$PSScriptRoot\artifacts\imageReferences.json"
)

$parent = Split-Path $fileOutput

If(!(Test-Path $parent))
{
	New-Item -ItemType Directory -Force -Path $parent | Out-Null
}

Push-Location -Path "$PSScriptRoot"
skaffold build `
  --profile=$profile `
  --default-repo=$repository `
  --file-output="$fileOutput" `
  --cache-artifacts=false
Pop-Location
