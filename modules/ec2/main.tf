resource "aws_instance" "public" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  monitoring    = true
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.public_sg_id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = { Name = "public-ec2" }
}

resource "aws_instance" "private" {
  ami                         = var.ami_id
  instance_type               = "t2.micro"
  subnet_id                   = var.private_subnet_id
  vpc_security_group_ids      = [var.private_sg_id]
  key_name                    = var.key_name
  associate_public_ip_address = false

  tags = { Name = "private-ec2" }
}
