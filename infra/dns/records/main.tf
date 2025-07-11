
resource "cloudflare_dns_record" "primary" {
  zone_id = var.zone_ids[var.primary_domain]
  name    = var.primary_domain
  type    = "CNAME"
  content = var.primary_cname_target
  ttl     = 1

  proxied = true
}

resource "cloudflare_dns_record" "redirects" {
  for_each = toset(var.redirect_domains)

  zone_id = var.zone_ids[each.value]
  name    = each.value
  type    = "A"
  content = "192.0.2.1" # Placeholder IP for redirects
  ttl     = 1

  proxied = true
}
