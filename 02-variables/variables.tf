variable "ami_id" {
  type        = string
  description = "RHEL9 devops image"
  default     = "ami-0220d79f3f480ecf5"
}

variable "environment"{
    type = string
    default = "prod"
}

# variable "instance_type" {
#   type        = string
#   description = "Deployment environment name"
#   #default     = "t3.micro"

#   validation {
#     condition     = contains(["t3.micro", "t3.small","t3.medium","t3.large"], var.instance_type)
#     error_message = "instance type should be t3.micro or t2.small"
#   }
# }

variable "ec2_tags" {
  type        = map(string)
  description = "ec2-tags"

  default = {
    Name        = "terraform-demo"
    project     = "roboshop"
    Environment = "dev"

  }

}

variable "sg_name" {
  type    = string
  default = "allow_terraform"
}

variable "port" {
  type    = number
  default = 0
}

variable "cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]

}

variable "sg_tags" {
  type = map(string)
  default = {
    Name        = "allow_terraform"
    project     = "roboshop"
    Environment = "dev"
  }
}