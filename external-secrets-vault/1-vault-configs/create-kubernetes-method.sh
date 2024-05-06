# vault auth enable kubernetes
# vault write auth/kubernetes/config \
#     kubernetes_host="http://vault.vault.svc.cluster.local:8200"

# vault write auth/kubernetes/role/external-secrets \
#     bound_service_account_names=external-secrets,kubernetes-external-secrets \
#     bound_service_account_namespaces=default \
#     policies=read-all
