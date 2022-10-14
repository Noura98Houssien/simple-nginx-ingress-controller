
output "k8s_service_ingress_elb" {
  description = "External DN name of elastic load balancer"
  value       = data.kubernetes_service.ingress_nginx.status.0.load_balancer.0.ingress.0.hostname

}
