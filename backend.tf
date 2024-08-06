# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "lavinia81-terraform-remote-state"
    key            = "terraform-module/redzone/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform-state-lock"
  }
}