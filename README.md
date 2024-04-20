# Setting Up a Docker Private Registry on Kubernetes

## Create a User for Docker registry

```sh
htpasswd -Bc registry.password docker
## or
docker run --entrypoint htpasswd httpd:2 -Bbn username password > auth/htpasswd
```

- After creating the user, you'll need to copy the `registry.password` file to the `/data/auth` path on the node's persistence volume to enable authentication for your Docker registry."

## Deploy the kubernetes manifests

```sh
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/Persistent-Volume-Claim.yaml
kubectl apply -f kubernetes/Persistent-Volume.yaml
kubectl apply -f kubernetes/Service.yaml
```

## Add domain and SSL

```sh
kubectl apply -f kubernetes/Domain-and-SSL/Issuer.yaml
kubectl apply -f kubernetes/Domain-and-SSL/Ingress-deployment.yaml
```

- docker login

```sh
docker login registry.example.domain.com
Username:
Password:
```
