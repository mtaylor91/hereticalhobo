
variable "name_servers" {
  description = "Map of domain names to their respective name servers."
  type        = map(list(string))
}
