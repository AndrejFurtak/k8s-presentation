
Param (
	[string]$name = 'release-v1'
)

helm upgrade --install $name $PSScriptRoot/calculator