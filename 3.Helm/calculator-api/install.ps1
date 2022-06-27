
Param (
	[string]$name = 'calculator-api-v1'
)

helm upgrade --install $name $PSScriptRoot/chart