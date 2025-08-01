
resource "cloudflare_pages_project" "this" {
  account_id = var.cloudflare_account_id
  name       = var.project_name

  production_branch = var.production_branch

  lifecycle {
    ignore_changes = all
  }
}

resource "cloudflare_pages_domain" "primary" {
  account_id   = var.cloudflare_account_id
  project_name = cloudflare_pages_project.this.name
  name         = var.primary_domain
}
