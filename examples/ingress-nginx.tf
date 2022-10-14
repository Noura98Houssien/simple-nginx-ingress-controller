# You MUST have an EKS cluster already existing to run ingress Nginx on it
module "public_eks_cluster" {
  source         = "git::https://github.com/Noura98Houssien/simple-EKS-cluster.git?ref=v0.0.1"
  vpc_name       = "my-VPC1"
  cluster_name   = "my-EKS1"
  desired_size   = 2
  max_size       = 2
  min_size       = 1
  instance_types = ["t3.medium"]
}
module "ingress-nginx" {
  # note update the source link with the required version
  source     = "git::https://github.com/Noura98Houssien/simple-nginx-ingress-controller.git?ref=vx.x.x"
  cluster_id = module.puplic-eks-cluster.id


}