# Automate the creation of a K8s cluster with Terraform

Launch and manage a GKE cluster using Terraform.

## Launch GKE Cluster

```
$ terraform init
$ terraform plan
$ terraform apply
```

## Launch Demo Application

Run the following after connecting to the cluster:

```
$ kubectl apply -f deployment.yaml
$ kubectl apply -f service.yaml
$ kubectl apply -f ingress.yaml
```
