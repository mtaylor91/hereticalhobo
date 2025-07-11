
include {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = find_in_parent_folders("env.hcl")
  expose = true
}

dependency "frontend" {
  config_path = "../../frontend"
}

dependency "zones" {
  config_path = "../zones"
}

locals {
  primary_domain = include.env.locals.domains.primary
}

inputs = {
  cloudflare_account_id = get_env("CLOUDFLARE_ACCOUNT_ID")
  primary_cname_target  = dependency.frontend.outputs.subdomain
  primary_domain        = local.primary_domain
  redirect_domains      = include.env.locals.domains.redirects
  zone_ids              = dependency.zones.outputs.zone_ids
}
