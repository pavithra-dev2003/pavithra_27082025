module "resource1" {
    source = "../child_module/resource_group"
    rg_name = "pavithra24"
    rg_location = "East us"
  
}
module "vnet1" {
    depends_on = [ module.resource1 ]
    source = "../child_module/vnet"
    virtual_name = "pavithra_virtual"
     rg_name = "pavithra24"
    rg_location = "East us"
    virtual_address = ["10.0.0.0/16"]
  
}
module "subnet2" {
depends_on = [ module.vnet1 ]
source = "../child_module/subnet"
subnet_name = "pavithra-subnet"
virtual_name = "pavithra_virtual"
rg_name = "pavithra24"
subnet_address = ["10.0.1.0/24"]
}
module "nsg2" {
    depends_on = [ module.resource1 ]
    source = "../child_module/nsg"
    nsg_name = "pavithransg"
    rg_name = "pavithra24"
    rg_location = "East us"  
}
module "nic4" {
    depends_on = [ module.resource1 ]
    source = "../child_module/nic"
    rg_name = "pavithra24"
    nic_name = "pavithranic"
    virtual_name = "pavithra_virtual"
    rg_location = "East us" 
    subnet_name = "pavithra-subnet" 
}
module "pip" {
    depends_on = [ module.resource1 ]
    source = "../child_module/pip"
      rg_name = "pavithra24"
    rg_location = "East us"
    pip_name = "pavithrapip"
  
}