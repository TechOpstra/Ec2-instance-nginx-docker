output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "security_group_id" {
  value = module.vpc.security_group_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "private_key_pem" {
  value = module.ec2.private_key_pem
  sensitive = true
}
