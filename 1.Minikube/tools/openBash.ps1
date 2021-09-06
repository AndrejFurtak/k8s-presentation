Param (
	[string]$p,
	[string]$n = "kubernetes-examples"
)

kubectl exec -n $n -i -t $p -- /bin/bash