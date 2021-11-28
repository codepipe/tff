resource "aws_s3_bucket" "b" {
  bucket = "my-tf-massiveprince-bucket"
  acl    = "private"

  tags = {
    Name        = "ravi-daya-santhosh-deepak1231"
    Environment = "Dev"
  }
}
