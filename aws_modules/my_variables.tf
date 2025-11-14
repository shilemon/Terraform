variable "my_env" {
  description = "The environment for the resources."
  type        = string
 
}

variable "ami_id" {
  description = "This is the AMI ID for Ec2."
  type        = string

}
variable "instance_type" {
  description = "The type of EC2 instance "
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
}   