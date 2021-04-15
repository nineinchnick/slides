---
title: Helm and Kustomize
author: Jan Waś
...

# Helm

* packaging
* templating
* deploying

# Helm chart

```bash
% helm create my-app
Creating my-app
% find my-app
my-app
my-app/Chart.yaml
my-app/charts
my-app/.helmignore
my-app/templates
my-app/templates/deployment.yaml
my-app/templates/NOTES.txt
my-app/templates/ingress.yaml
my-app/templates/tests
my-app/templates/tests/test-connection.yaml
my-app/templates/service.yaml
my-app/templates/hpa.yaml
my-app/templates/serviceaccount.yaml
my-app/templates/_helpers.tpl
my-app/values.yaml
```

More at https://helm.sh/docs/topics/charts/

<!--
describe structure, short on metadata, versioning, dependencies
-->

# Helm template

* variables
* template functions (filters)
* flow control
* named templates
* files
* indentation

<!--
TODO: flow control includes named template segments
-->

# Helm deploy

```bash
helm install -f my-values.yaml app my-app/

helm upgrade -f my-values.yaml app my-app/

helm rollback app

helm uninstall app
```

# Kustomize

* templating only

# Kustomization

```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization

resources:
- deployment.yaml
```

# Kustomize edit

* CLI
* transformers and generators plugins
* Go API

```bash
kustomize edit add --help
kustomize edit set --help
```

# Kustomize deploy

```bash
kubectl apply -k manifest/
# or
kustomize build manifest/ | kubectl apply -f -
# or
kubectl kustomize manifest/ | kubectl apply -f -

kubectl rollout undo deployment/my-app

kubectl delete -k manifest/
```

# Kustomize eschewed features

* removal directives
* unstructured edits
* build-time side effects
* globs

More at https://kubectl.docs.kubernetes.io/faq/kustomize/eschewedfeatures/

<!--
TODO: install, update, rollback, uninstall
-->

# Kustomize templates

* overlays and bases
* patches
* secret and configmap generators
* images, replicas

More at https://kubectl.docs.kubernetes.io/references/kustomize/glossary/
