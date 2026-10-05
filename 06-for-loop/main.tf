resource "aws_instance" "roboshop" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value.instance_type
    vpc_security_group_ids = [
        aws_security_group.roboshop[each.key].id,
        aws_security_group.common.id
    ]

    tags = {
        name = "${var.project}-${var.environment}-${each.key}"
    }
}

resource "aws_security_group" "roboshop"{
    for_each = var.instances
    name = "${var.project}-${var.environment}-${each.key}"

 egress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "-1" # all traffic
    cidr_blocks = var.cidr
  }

  tags ={
    name = "${var.project}-${var.environment}-${each.key}"
  }

}

resource "aws_security_group" "common"{
    
    name = "${var.project}-${var.environment}-common"

 egress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "-1" # all traffic
    cidr_blocks = var.cidr
  }

  tags ={
    name = "${var.project}-${var.environment}-common"
  }

    }