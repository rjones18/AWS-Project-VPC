terraform {
  backend "s3" {
    bucket         = "reggie-talent-academy-686520628199-tfstates"
    key            = "projects/project-vpc/terraform2.tfstates"
    dynamodb_table = "terraform-lock"
  }
}