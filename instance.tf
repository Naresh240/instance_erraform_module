data "aws_availability_zones" "available" {}

resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "HelloWorld"
  }
}
