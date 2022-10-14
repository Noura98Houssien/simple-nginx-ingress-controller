resource "kubernetes_pod_v1" "app1" {
  metadata {
    name = "my-app1"
    labels = {
      "app" = "app1"
    }
  }

  spec {
    container {
      image = "hashicorp/http-echo"
      name  = "my-app1"
      args  = ["-text=Hello from my app 1"]
    }
  }
}

resource "kubernetes_pod_v1" "app2" {
  metadata {
    name = "my-app2"
    labels = {
      "app" = "app2"
    }
  }

  spec {
    container {
      image = "hashicorp/http-echo"
      name  = "my-app2"
      args  = ["-text=Hello from my app 2"]
    }
  }
}

