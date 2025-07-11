
variable "cloudflare_account_id" {
  description = "Cloudflare account ID."
  type        = string
}

variable "primary_cname_target" {
  description = "CNAME target for the domains."
  type        = string
}

variable "primary_domain" {
  description = "Primary domain name."
  type        = string
}

variable "redirect_domains" {
  description = "List of domains to redirect to the primary domain."
  type        = list(string)
}

variable "zone_ids" {
  description = "Map of domain names to their corresponding Cloudflare zone IDs."
  type        = map(string)
}
