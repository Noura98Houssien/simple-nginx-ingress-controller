resource "kubernetes_ingress_v1" "ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "simple-fanout-ingress"
  }

  spec {
    ingress_class_name = "nginx"

    rule {
      http {
        path {
          backend {
            service {
              name = "my-app1-service"
              port {
                number = 5678
              }
            }
          }

          path = "/app1"
        }

        path {
          backend {
            service {
              name = "my-app2-service"
              port {
                number = 5678
              }
            }
          }

          path = "/app2"
        }
      }
    }

  }
}
