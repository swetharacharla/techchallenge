resource "azurerm_resource_group" "rg" {
   name = var.resource_group
   location = var.location
  
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "${var.cluster-name}"
  location            = "${var.location}"
  resource_group_name = azurerm_resource_group.rg.name  
  dns_prefix          = "testcluster-dns"

  default_node_pool {
    name            = "agentpool"
    vm_size         = "Standard_B2s"
    node_count      = 1
    os_disk_size_gb = 128
    type            = "VirtualMachineScaleSets"
  }

  kubernetes_version = "1.27"

  network_profile {
    network_plugin     = "${var.network_plugin}"
    dns_service_ip     = "${var.dns_service_ip}"
    service_cidr       = "${var.service_cidr}"
    pod_cidr           = "${var.pod_cidr}"
    load_balancer_sku  = "${var.load_balancer_sku}"
  }

  node_resource_group = "MC_techapp_testcluster_australiaeast"


  identity {
    type = "SystemAssigned"
  }


  tags = {
    dev = "techappchallenge"
  }
}

# output "kube_config" {
#     value = "${azurerm_kubernetes_cluster.k8s.kube_config_raw}"
# }


