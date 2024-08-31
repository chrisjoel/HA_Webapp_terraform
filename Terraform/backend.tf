terraform {
  backend "s3" {
    bucket = "30-days-challenge-joel"
    key    = "day5-Scaling-Infrastructure"
    region = "us-east-1"
  }
}