

module "dev-app" {
  source = "./aws_modules"
  my_env ="dev"
  instance_type = "t2.micro"
  ami_id = "ami-00d8fc944fb171e29" #Ubuntu 
    instance_count = 1
}   


module "staging-app" {
  source = "./aws_modules"
  my_env ="stg"
  instance_type = "t2.medium"
  ami_id = "ami-00d8fc944fb171e29" #Ubuntu 
    instance_count = 2
}   


module "prod-app" {
  source = "./aws_modules"
  my_env ="prod"
  instance_type = "t2.large"
  ami_id = "ami-00d8fc944fb171e29" #Ubuntu 
  instance_count = 3
}   


