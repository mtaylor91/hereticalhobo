
include {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = find_in_parent_folders("env.hcl")
  expose = true
}

inputs = {
  cloudflare_account_id = get_env("CLOUDFLARE_ACCOUNT_ID")
  domains = concat(
    [include.env.locals.domains.primary],
    include.env.locals.domains.redirects
  )
}
