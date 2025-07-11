
include {
  path = find_in_parent_folders("root.hcl")
}

dependency "zones" {
  config_path = "../zones"
}

inputs = {
  name_servers = dependency.zones.outputs.name_servers
}
