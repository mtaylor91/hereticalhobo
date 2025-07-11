
variable "cloudflare_account_id" {
  description = "Cloudflare account ID."
  type        = string
}

variable "domains" {
  description = "List of domain names."
  type        = list(string)
}
