provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "workload01" {
    manifest = yamldecode(file("./workload.yaml"))
}