Param (
	[string]$p,
	[string]$n = "kubernetes-examples"
)

kubectl describe pod $p -n $n