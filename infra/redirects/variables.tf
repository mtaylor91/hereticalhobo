
variable "name" {
  description = "Name to use for the Cloudflare resources."
  type        = string
}

variable "cloudflare_account_id" {
  description = "Cloudflare account ID"
  type        = string
}

variable "primary_domain" {
  description = "The primary domain for the application."
  type        = string
}

variable "redirect_domains" {
  description = "A list of domains to redirect to the primary domain."
  type        = list(string)
}

variable "zone_ids" {
  description = "A map of domain names to their corresponding Cloudflare zone IDs."
  type        = map(string)
}
