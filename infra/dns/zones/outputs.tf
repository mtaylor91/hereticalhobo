
output "name_servers" {
  value = {
    for domain in var.domains :
    domain => cloudflare_zone.this[domain].name_servers
  }
}
