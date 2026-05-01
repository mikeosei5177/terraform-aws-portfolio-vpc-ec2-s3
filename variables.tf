variable "region" {
type = string
}
variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet1_cidr" {
  type = string
}

variable "subnet2_cidr" {
  type = string
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}

variable "open_cidr" {
  type = string
}

variable "websg_name" {
  type = string
}

variable "http_port" {
  type = number
}

variable "ssh_port" {
  type = number
}

variable "bucket_name" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "alb_name" {
  type = string
}

variable "tg_name" {
  type = string
}

variable "protocol_type" {
  type = string
}

variable "instance_name1" {
  type = string
}

variable "instance_name2" {
  type = string
}