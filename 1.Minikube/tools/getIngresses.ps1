Param (
	[string]$n = "kubernetes-examples"
)

kubectl get ingresses -n $n