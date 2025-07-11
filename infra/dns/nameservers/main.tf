
resource "namecheap_domain_records" "this" {
  for_each = var.name_servers

  domain = each.key
  mode   = "OVERWRITE"

  nameservers = each.value
}
