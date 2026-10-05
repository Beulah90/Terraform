variable "ami_id"  {

type = string
default  = "ami-0220d79f3f480ecf5"

}

variable "instance_type" {
    type = string
    default = "t3.micro"

    validation{
        condition = contains (["t3.micro","t3.small","t3.medium"], var.instance_type)
        error_message = "instance type should be t3.micro or t3.small"
    }



}


# variable "instance_type" {
#   type    = string
#   #default = "t3.micro"

#   validation {
#     condition     = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
#     error_message = "Instance type should be either t3.micro or t3.small"
#   }
# }

variable "common_tags" {
    default = {
    Project = "roboshop"
    Environment = "dev"
    }

}
variable "sg_name" {
    type = string
    default = "allow_terraform_vars"


}

variable "port"{
    type = number
    default = 0
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}