resource "kubernetes_namespace" "istio_system" {
  metadata {
    name = "istio-system"
  }
}

resource "helm_release" "istio-base" {
  repository = var.istio_charts_url
  chart      = "base"
  name       = "istio-base"
  namespace  = kubernetes_namespace.istio_system.id
  version    = var.istio_version
}

resource "helm_release" "istiod" {
  repository = var.istio_charts_url
  chart      = "istiod"
  name       = "istiod"
  namespace  = kubernetes_namespace.istio_system.id
  version    = var.istio_version
  depends_on = [helm_release.istio-base]
}

resource "helm_release" "istio-ingress" {
  repository = var.istio_charts_url
  chart      = "gateway"
  name       = "istio-ingress"
  namespace  = kubernetes_namespace.istio_system.id
  version    = var.istio_version
  depends_on = [helm_release.istiod]
}
