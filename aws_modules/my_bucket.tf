#s3 bucket

#resouce Block
resource "aws_s3_bucket" "my_bucket" {
  #arguments
  bucket = "${var.my_env}my-unique-bucket-name-emon"

  tags = {
    Name        = "${var.my_env}My bucket"
    Environment = var.my_env
  }
}