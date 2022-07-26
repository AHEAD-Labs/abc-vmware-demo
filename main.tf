resource "vsphere_virtual_machine" "vm" {
  name             = "abc-demo"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = "centos7_64Guest"
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "disk0"
    size  = 20
  }
}