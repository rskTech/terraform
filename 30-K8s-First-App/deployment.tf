resource "kubernetes_namespace" "test" {
  metadata {
    name = "myapp"
  }
}
resource "kubernetes_deployment" "test" {
  metadata {
    name      = "myapp"
    namespace = kubernetes_namespace.test.metadata.0.name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "MyTestApp"
      }
    }
    template {
      metadata {
        labels = {
          app = "MyTestApp"
        }
      }
      spec {
        container {
          image = "rajendrait99/cognixia10sep:1.0"
          name  = "myapp-container"
          port {
            container_port = 8081
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "test" {
  metadata {
    name      = "myapp"
    namespace = kubernetes_namespace.test.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.test.spec.0.template.0.metadata.0.labels.app
    }
    type = "LoadBalancer"
    port {
      node_port   = 30201
      port        = 80
      target_port = 8081
    }
  }
}

