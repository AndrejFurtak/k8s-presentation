Param (
	[string]$s,
	[string]$n = "kubernetes-examples"
)

kubectl describe service $s -n $n