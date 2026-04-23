# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
