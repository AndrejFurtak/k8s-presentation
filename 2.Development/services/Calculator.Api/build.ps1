Param (	
	[string]$registry = "registry.minikube",
	[string]$name = "calculator-api",
	[string]$tag = "latest",
	[bool]$push = $true
)

""
"*** $name ***"
""


$fullName="${registry}/${name}:${tag}"

docker buildx build `
	--file $PSScriptRoot/Dockerfile `
	--tag $fullName `
	$PSScriptRoot/../..

if ($push) {
	docker push $fullName
}