variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "payment"
  }
}

variable "project_name" {
    default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "zone_name" {
  default = "pragna.site"
}

variable "iam_instance_profile" {
  default = "EC2roleforShellScript"
}