NEW_PASSWORD="Password@123"
kubens argocd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d | xargs argocd login --port-forward --insecure --username admin --password
export PASSWORD=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo)

argocd account update-password --port-forward --account admin --current-password=$PASSWORD --new-password=$NEW_PASSWORD
argocd login --port-forward --insecure --username admin --password $NEW_PASSWORD
# argocd repo add https://github.com/defyjoy/spark-kubernetes-minio-data-engineering.git --username admin --password $NEW_PASSWORD
argocd repo add https://github.com/defyjoy/spark-kubernetes-minio-data-engineering.git
