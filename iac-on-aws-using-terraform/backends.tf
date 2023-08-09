terraform {
  backend "s3" {
    bucket         = "doa-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_state"
  }
}