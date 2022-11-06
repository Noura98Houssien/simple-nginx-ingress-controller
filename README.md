## Scope
This terraform module creates a simple Nginx ingress controller and Ingress service for the EKS cluster. to know more please have a look at my article on dev.to [Create a simple Ingress NGINX Controller on Amazon EKS Cluster with full example](https://dev.to/aws-builders/create-a-simple-ingress-nginx-controller-on-amazon-eks-cluster-with-full-example-5ei1)
## Prerequisites
You must have a running EKS cluster to able to create ingress controller on it.
Use this [simple-EKS-cluster](https://github.com/Noura98Houssien/simple-EKS-cluster) module to create simple EKS cluster with basic requirments.
## Getting started
have a look at [ingress nginx](https://github.com/Noura98Houssien/simple-nginx-ingress-controller/blob/master/examples/ingress-nginx.tf) in example folder.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.73 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >=2.7.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.34.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.7.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.nginx-ingress-controller](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_ingress_v1.ingress](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/ingress_v1) | resource |
| [kubernetes_pod_v1.app1](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/pod_v1) | resource |
| [kubernetes_pod_v1.app2](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/pod_v1) | resource |
| [kubernetes_service_v1.app1_service](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_v1) | resource |
| [kubernetes_service_v1.app2_service](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_v1) | resource |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [kubernetes_service.ingress_nginx](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/service) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | Name of the EKS cluster where the ingress nginx will be deployed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k8s_service_ingress_elb"></a> [k8s\_service\_ingress\_elb](#output\_k8s\_service\_ingress\_elb) | External DN name of elastic load balancer |
<!-- END_TF_DOCS -->
## License
[GNU General Public License v3.0](https://github.com/Noura98Houssien/simple-nginx-ingress-controller/blob/master/LICENSE)
