## TALOS CLUSTER CREATION

## INSTALL HOMEBTEW COLLLECTION MODULE

```
ansible-galaxy collection install community.general
ansible-galaxy collection install kubernetes.core
```

## INSTALLATION

```bash
kustomize build kubernetes/manifests/argocd | kubectl apply -f -
kustomize build kubernetes/bootstrap | kubectl apply -f -
 
```

## INSTALL RANCHER

[helm repo add rancher-latest https://releases.rancher.com/server-charts/latest](https://ranchermanager.docs.rancher.com/getting-started/installation-and-upgrade/other-installation-methods/air-gapped-helm-cli-install/install-rancher-ha)


## INSTALL RANCHER

```bash
helm install rancher ./rancher-<VERSION>.tgz \
    --namespace cattle-system \
    --set hostname=172.18.0. \
    --set certmanager.version=<CERTMANAGER_VERSION> \
    --set rancherImage=<REGISTRY.YOURDOMAIN.COM:PORT>/rancher/rancher \
    --set systemDefaultRegistry=<REGISTRY.YOURDOMAIN.COM:PORT> \ # Set a default private registry to be used in Rancher
    --set useBundledSystemChart=true # Use the packaged Rancher system charts
```

TODO - 

- [Chatwoot](https://github.com/chatwoot/chatwoot?tab=readme-ov-file) - Chatwoot is an open-source, self-hosted customer engagement suite. Chatwoot lets you view and manage your customer data, communicate with them irrespective of which medium they use, and re-engage them based on their profile.