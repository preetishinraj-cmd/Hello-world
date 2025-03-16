terraform {
  backend "s3" {
    bucket = "firstec2-instance-s3bucket-16032025"
    key    = "githubactions.tfstate"
    region = "us-east-1"
  }
}