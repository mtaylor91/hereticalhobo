
resource "cloudflare_zone" "this" {
  for_each = toset(var.domains)

  account  = {
    id = var.cloudflare_account_id
  }

  name = each.value
  type = "full"
}
