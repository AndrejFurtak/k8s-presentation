
Param (
	[string]$name = 'calculator-api-v1'
)

helm template $name $PSScriptRoot/chart