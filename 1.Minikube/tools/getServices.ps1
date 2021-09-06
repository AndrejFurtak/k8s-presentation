Param (
	[string]$n = "kubernetes-examples"
)

kubectl get services -n $n