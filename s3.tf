#resouce Block
resource "aws_s3_bucket" "my_bucket" {
  #arguments
  bucket = "my-unique-bucket-name-emon"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
