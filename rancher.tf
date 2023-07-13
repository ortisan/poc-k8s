# resource "kubernetes_namespace" "cattle_system" {
#   metadata {
#     name = "cattle-system"
#   }
# }

# resource "helm_release" "rancher" {
#   repository = "https://releases.rancher.com/server-charts/stable"
#   chart      = "gateway"
#   name       = "istio-ingress"
#   namespace  = kubernetes_namespace.cattle_system.id
#   version    = var.istio_version
#   depends_on = [helm_release.istiod]
# }

