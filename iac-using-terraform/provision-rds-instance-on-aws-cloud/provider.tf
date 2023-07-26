terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "doa-terraform-states-2023"
    # key    = "dev/rds.tfstate"
    region         = "us-east-2"
    dynamodb_table = aws_dynamodb_table.state_lock.name
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "state_lock" {
  name         = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
