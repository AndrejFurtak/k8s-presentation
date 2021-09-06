Param (
	[string]$p,
	[string]$n = "kubernetes-examples"
)

kubectl logs $p -n $n