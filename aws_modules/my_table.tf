#DynamoDB table
resource "aws_dynamodb_table" "my_table" {
  name         = "${var.my_env}-my-unique-bucket-name-emon-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

}