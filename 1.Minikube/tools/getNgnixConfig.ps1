Param (
	[string]$p
)

kubectl exec $p -n kube-system -- tail -n 1500 /etc/nginx/nginx.conf