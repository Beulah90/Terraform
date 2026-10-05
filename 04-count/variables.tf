variable "environment" {
  type    = string
  default = "dev"
}

variable "project" {

  type    = string
  default = "roboshop"

}

variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "RHEL imange for devops"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
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
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "instances" {
  type    = list(string)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  type    = string
  default = "Z0907650KNTSP9VP21VH"

}

variable "domain_name" {
  type    = string
  default = "daiops90.online"
}