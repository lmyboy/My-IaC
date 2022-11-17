terraform {
  backend "s3" {
    bucket = "profrotas-terraform-state-lucas"
    key    = "Prod/terraform.tfstate"
    region = "us-west-1"
  }
}