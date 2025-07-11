
resource "cloudflare_list" "this" {
  account_id = var.cloudflare_account_id
  kind       = "redirect"
  name       = "${var.name}_redirect_list"
}

resource "cloudflare_list_item" "this" {
  for_each = toset(var.redirect_domains)

  account_id = var.cloudflare_account_id
  list_id    = cloudflare_list.this.id

  redirect = {
    source_url  = "https://${each.value}"
    target_url  = "https://${var.primary_domain}"
    status_code = 301

    include_subdomains    = false
    preserve_path_suffix  = true
    preserve_query_string = true
    subpath_matching      = true
  }
}

resource "cloudflare_ruleset" "this" {
  account_id = var.cloudflare_account_id
  kind       = "root"
  name       = "Redirect requests to ${var.primary_domain}"
  phase      = "http_request_redirect"

  rules = [{
    action = "redirect"
    action_parameters = {
      from_list = {
        name = cloudflare_list.this.name
        key  = "http.request.full_uri"
      }
    }

    description = "Redirect requests to ${var.primary_domain} from the redirect list"
    expression  = "http.request.full_uri in ${"$"}${cloudflare_list.this.name}"
    enabled     = true
  }]
}
