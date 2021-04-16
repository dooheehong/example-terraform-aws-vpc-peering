output "primary-az1_secondary-az1" {
  description = "Test access from primary-az1 to secondary-az1."
  value = "ssh -n -i devops-peering ubuntu@${aws_instance.primary-az1.public_ip} 'curl -s --connect-timeout 3 -I -XGET ${aws_instance.secondary-az1.private_ip} | grep HTTP'"
}

output "primary-az2_secondary-az2" {
  description = "Test access from primary-az2 to secondary-az2."
  value = "ssh -n -i devops-peering ubuntu@${aws_instance.primary-az2.public_ip} 'curl -s --connect-timeout 3 -I -XGET ${aws_instance.secondary-az2.private_ip} | grep HTTP'"
}

output "secondary-az1_primary-az1" {
  description = "Test access from secondary-az1 to primary-az1."
  value = "ssh -n -i devops-peering ubuntu@${aws_instance.secondary-az1.public_ip} 'curl -s --connect-timeout 3 -I -XGET ${aws_instance.primary-az1.private_ip} | grep HTTP'"
}

output "secondary-az2_primary-az2" {
  description = "Test access from secondary-az2 to primary-az2."
  value = "ssh -n -i devops-peering ubuntu@${aws_instance.secondary-az2.public_ip} 'curl -s --connect-timeout 3 -I -XGET ${aws_instance.primary-az2.private_ip} | grep HTTP'"
}
