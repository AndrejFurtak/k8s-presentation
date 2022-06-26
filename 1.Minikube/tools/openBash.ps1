Param (
	[string]$p
)

kubectl exec -i -t $p -- /bin/bash