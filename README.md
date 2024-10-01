## TALOS CLUSTER CREATION

## INSTALL HOMEBTEW COLLLECTION MODULE

```
ansible-galaxy collection install community.general
ansible-galaxy collection install kubernetes.core
```

## INSTALLATION

- INSTALLS KIND CLUSTER
- INSTALLS ARGOCD INTO KIND CLUSTER

```
ansible-playbook kubernetes/kind-playbook.yaml --ask-become-pass
```