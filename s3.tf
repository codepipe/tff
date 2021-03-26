resource "aws_s3_bucket" "mass" {
  bucket = "mass-prince-massive"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
