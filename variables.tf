variable "name" {
  default = "k8s-cluster-creation"
  type = string
}

variable "project" {
  default = "generated-media-310804"
}

variable "location" {
  default = "us-west1"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "region" {
  default = "europe-west2"
}
