
include {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = find_in_parent_folders("env.hcl")
  expose = true
}

inputs = {
  cloudflare_account_id = get_env("CLOUDFLARE_ACCOUNT_ID")
  project_name         = include.env.locals.name
  primary_domain       = include.env.locals.domains.primary
  redirect_domains     = include.env.locals.domains.redirects
  production_branch    = run_cmd("git", "rev-parse", "--abbrev-ref", "HEAD")
}
