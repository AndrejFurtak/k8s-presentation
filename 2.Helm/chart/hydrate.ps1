
Param (
	[string]$name = 'release-v1'
)

helm template $name $PSScriptRoot/calculator