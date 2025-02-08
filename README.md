## INFRASTRUCTURE SETUP 

This infrastructure is setup on purely based on kind cluster and dns is managed by pihole.


## INSTALLATION

```bash
kustomize build kubernetes/manifests/argocd | kubectl apply -f -
kustomize build kubernetes/bootstrap | kubectl apply -f -
```

## INSTALL RANCHER

[helm repo add rancher-latest https://releases.rancher.com/server-charts/latest](https://ranchermanager.docs.rancher.com/getting-started/installation-and-upgrade/other-installation-methods/air-gapped-helm-cli-install/install-rancher-ha)


## APPS HOSTED - 

- argocd
- aws-localstack
- cert-manager
- external-dns
- hashicorp-vault
- ingress-nginx
- keycloak
- metallb
- minio
- ollama
- pihole
- postgresql
- spark
- kafka
- wordpress


# TODO - 

- [Chatwoot](https://github.com/chatwoot/chatwoot?tab=readme-ov-file) - Chatwoot is an open-source, self-hosted customer engagement suite. Chatwoot lets you view and manage your customer data, communicate with them irrespective of which medium they use, and re-engage them based on their profile.

- [Open-webui](https://github.com/open-webui/open-webui)  - Open WebUI is an [extensible](https://docs.openwebui.com/features/plugin/), feature-rich, and user-friendly self-hosted AI platform designed to operate entirely offline. It supports various LLM runners like Ollama and OpenAI-compatible APIs, with built-in inference engine for RAG, making it a powerful AI deployment solution.