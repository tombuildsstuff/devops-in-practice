terraform {
  backend "s3" {
    bucket = "foo"
    key    = "bar"
    region = "us-east-1"
  }
}
