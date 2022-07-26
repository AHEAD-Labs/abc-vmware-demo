data "vsphere_datacenter" "datacenter" {
  name = var.vdatacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.vdatastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vcluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.vnetwork
  datacenter_id = data.vsphere_datacenter.datacenter.id
}