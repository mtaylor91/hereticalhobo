
variable "cloudflare_account_id" {
  description = "Cloudflare account ID."
  type        = string
}

variable "project_name" {
  description = "Name of the Cloudflare Pages project"
  type        = string
}

variable "primary_domain" {
  description = "Primary domain name"
  type        = string
}

variable "redirect_domains" {
  description = "List of domains to redirect to the primary domain"
  type        = list(string)
}
