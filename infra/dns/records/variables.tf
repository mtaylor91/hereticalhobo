
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

variable "primary_zone_id" {
  description = "Zone ID for the primary domain."
  type        = string
}
