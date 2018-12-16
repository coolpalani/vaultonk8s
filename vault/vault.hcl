disable_cache = true
disable_mlock = true
 
ui = true
 
listener "tcp" {
  address 	= "127.0.0.1:8200"
  tls_disable = 1
}
 
storage "consul" {
  address = "127.0.0.1:8500"
  path    = "forecubes/"
  disable_registration = "true"
}
 
max_lease_ttl = "10h"
default_lease_ttl = "10h"
raw_storage_endpoint = true
cluster_name = "forecubes-vault"