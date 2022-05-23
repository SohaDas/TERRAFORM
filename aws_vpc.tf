resource "aws_default_vpc" "FIRST_VPC" {
    tags = {
        Name = "FIRST_VPC"
    }
}
resource "aws_vpc" "SECOND_VPC" {
    cidr_block = "10.0.0.0/16"
    tags       = {
        name = "SECOND_VPC"
    }
}
resource "aws_vpc_peering_connection" "FOO" {
    #peer_owner_id = var.peer_owner_id
    peer_vpc_id = aws_vpc.SECOND_VPC.id
    vpc_id      = aws_default_vpc.FIRST_VPC.id
}