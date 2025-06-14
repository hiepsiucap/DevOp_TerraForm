terraform {
  backend "s3" {
    bucket         = "my-terraform-state-hiep"
    key            = "dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
