# Project

My project is an open-source three-tier application which can be accessed in these three repositories:

[Storefront](https://github.com/tomisinlalude/saleor-storefront)
[API](https://github.com/tomisinlalude/saleor-api)
[Admin Dashboard](https://github.com/tomisinlalude/saleor-dashboard)

## Automate the creation of a K8s cluster with Terraform

Launch and manage a GKE cluster using Terraform.

## Launch GKE Cluster

```
$ terraform init
$ terraform plan
$ terraform apply
```

## Connect Cluster to application

Login to gcloud
 
```
gcloud auth login
```
Connect cluster to your app

```
gcloud container clusters get-credentials saleor --zone europe-west1-c --project generated-media-310804
```
## Creating Kubernetes manifests in each tier
 
Generating the kubernetes files using helm chart 

```
helm create <chart-directory-name>
```

Update the YAML files to suit the project

See values.yml and deployments/ingress.yml


Install the objects

```
helm install <chart-namee> ./<chart-directory-name>/
```

Upgrade the chart in the cluster when changes are made: 

```
helm upgrade <chart-name> ./<chart-directory-name>/
```

Create IP address in cluster

```
gcloud compute addresses create <chart-name> --global
```

Get the IP address created from Ingress

```
kubectl get ingress
```

Visit the IP address in the browser. 

The tier has been successfully deployed! 
