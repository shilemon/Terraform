output "my_ec2_instance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.my-instance.public_ip
}