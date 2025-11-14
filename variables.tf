variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table."
  type        = string
  default = "my-dynamodb-table"
}

variable "ami_id" {
  description = "The AMI ID for the EC2(ubuntu) instance."
  type        = string
  default     = "ami-00d8fc944fb171e29" #Ubuntu 
}