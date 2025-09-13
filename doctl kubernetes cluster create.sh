doctl kubernetes cluster create argocd-lab --region nyc1 --size s-2vcpu-2gb --count 1 --version latest
kubectl create namespace argocd
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
LzQ101BXBT3Wc4Lx
argocd admin LzQ101BXBT3Wc4Lxd -n argocd

kubectl -n argocd get svc argocd-server
argocd login 129.212.136.123 \
  --username admin \
  --password LzQ101BXBT3Wc4Lx \
  --insecure