output "dev_ip" {
    value = aws_instance.dev_node.public_ip
}
output "aws_vpc_id" {
    value = aws_vpc.mtc_vpc.id
}
