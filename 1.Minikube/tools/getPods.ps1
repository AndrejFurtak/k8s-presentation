Param (
	[string]$n = "kubernetes-examples"
)

kubectl get pods -n $n