variable "region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "k8s-demo"
}


variable "cluster_version" {
  type    = string
  default = "1.27"
}


variable "vpc_id" {
  type    = string
  default = "vpc-08ccd18714a2e8437"
}

variable "subnets_id" {
  type    = list(string)
  default = ["subnet-01459f2806e7d9f24", "subnet-080509807e667e94e"]
}

variable "istio_charts_url" {
  type    = string
  default = "https://istio-release.storage.googleapis.com/charts"
}


variable "istio_version" {
  type    = string
  default = "1.18.0"
}
