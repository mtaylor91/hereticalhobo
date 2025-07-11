
generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  backend "s3" {
    bucket = "terragrunt-remote-state"
    key    = "hereticalhobo/${path_relative_to_include()}/terraform.tfstate"
    region                      = "auto"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
    access_key = "${get_env("CLOUDFLARE_R2_ACCESS_KEY_ID")}"
    secret_key = "${get_env("CLOUDFLARE_R2_SECRET_ACCESS_KEY")}"
    endpoints = { s3 = "https://${get_env("CLOUDFLARE_ACCOUNT_ID")}.r2.cloudflarestorage.com" }
  }
}
EOF
}
