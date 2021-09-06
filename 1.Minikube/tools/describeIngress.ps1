Param (
	[string]$i,
	[string]$n = "kubernetes-examples"
)

kubectl describe ingress $i -n $n