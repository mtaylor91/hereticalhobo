
resource "cloudflare_dns_record" "primary" {
  zone_id = var.primary_zone_id
  name    = var.primary_domain
  type    = "CNAME"
  content = var.primary_cname_target
  ttl     = 1

  proxied = true
}
