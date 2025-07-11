
include {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = find_in_parent_folders("env.hcl")
  expose = true
}

dependency "zones" {
  config_path = "../dns/zones"
}

inputs = {
  name                  = include.env.locals.name
  cloudflare_account_id = get_env("CLOUDFLARE_ACCOUNT_ID")
  primary_domain        = include.env.locals.domains.primary
  redirect_domains      = include.env.locals.domains.redirects
  zone_ids              = dependency.zones.outputs.zone_ids
}
