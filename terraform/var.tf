################################################################################
##                            Global Variables                                ##
################################################################################

variable "resource_group" {
  default = "techapp"
}

variable "location" {
  default = "australiaeast"
}

#variable "ARM_ACCESS_KEY" {}


################################################################################
##                       AKS Cluster variables                                ##
################################################################################
variable "cluster-name" {
  default = "testcluster"
}

variable "network_plugin" {
  default = "kubenet"
}

variable "dns_service_ip" {
  default = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  default = "172.17.0.1/16"
}

variable "service_cidr" {
  default = "10.0.0.0/16"
}

variable "pod_cidr" {
  default = "10.244.0.0/16"
}

variable "load_balancer_sku" {
  default = "standard"
}

variable "CLIENT_ID" {}

variable "CLIENT_SECRET" {}
