terraform {
  backend "s3" {
    bucket         = "tf-state-aika"
    key            = "project1.tfstate"
    region         = "us-east-1"
  }
}