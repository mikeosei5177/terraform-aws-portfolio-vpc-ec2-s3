terraform {
  backend "s3" {
    bucket       = "tf-statefile-mike5177"
    key          = "prod/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}