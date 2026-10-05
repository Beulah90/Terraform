variable "environment" {
  type    = string
  default = "dev"

}

variable "project" {
  type    = string
  default = "roboshop"

}

variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.large"], var.instance_type)
    error_message = "instance type should be t3.micro or t3.small"

  }
}

variable "sg_name" {
  type    = string
  default = "allow_terraform_vars"
}

variable "port" {
  type    = number
  default = 0
}

variable "cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "instances" {
  type = map

  default = {

    mongodb = {
      "instance_type" = "t3.micro"
    },

    redis = {
      "instance_type" = "t3.micro"
    },
    mysql = {
      "instance_type" = "t3.micro"
    },
    rabbitmq = {
      "instance_type" = "t3.micro"
    },
    catalogue = {
      "instance_type" = "t3.micro"
    },
    user = {
      "instance_type" = "t3.micro"
    },
    cart = {
      "instance_type" = "t3.micro"
    },
    shipping = {
      "instance_type" = "t3.micro"
    },
    payment = {
      "instance_type" = "t3.micro"
    },
    frontend = {
      "instance_type" = "t3.micro"
    }

  }
}

variable "zone_id" {
  type    = string
  default = "Z0907650KNTSP9VP21VH"
}

variable "domain_name" {
  type    = string
  default = "daiops90.online"
}