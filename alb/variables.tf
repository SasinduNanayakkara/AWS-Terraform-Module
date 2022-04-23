variable "alb_name" {
  default = "alb-example"
  description = "Name of the ALB"
}

variable "load_balancer_type" {
  default = "application"
  description = "Type of the ALB"
}

variable "subnet1_id" {
  description = "value of the vpc subnet id"
}
variable "targetgroup_name" {
  type = string
  default = "targetgroup-example"
  description = "Name of the ALB Target Group"
}

variable "port" {
  description = "Port of the ALB Target Group"
  default = "80"
}

variable "alb_port" {
  description = "value of the ALB port"
  default = "80"
}
variable "protocol" {
  description = "Protocol of the ALB Target Group"
  default = "HTTP"
}

variable "vpc_id" {
  description = "value of the vpc id"
  type = string
}
variable "internal" {
  type = bool
  default = false
  description = "Is the ALB internal"
}

variable "deltion_protection" {
  type = bool
  default = false
  description = "Is the ALB deletion protection enabled"
}

variable "default_action_type" {
  default = "forward"
  description = "Type of the default action"
}

variable "priority" {
  default = 100
  description = "Priority of the ALB rule"
}

variable "action_type" {
  default = "forward"
  description = "Type of the alb rule action"
}

variable "security_group_name" {
  description = "value of the security group name"
}

variable "security_group_description" {
  description = "value of the security group description"
  default = "ALB security group"
}
variable "ingress_description" {
  description = "value of the ingress description"
  type = string
}

variable "ingress_from_port" {
  description = "value of the ingress from port"
  type = number
}

variable "ingress_to_port" {
  description = "value of the ingress to port"
  type = number
}

variable "ingress_protocol" {
  description = "value of the ingress protocol"
  type = string
}

variable "ingress_cidr_blocks" {
  description = "value of the ingress cidr blocks"
}

variable "egress_from_port" {
  description = "value of the egress from port"
  type = number
}

variable "egress_to_port" {
  description = "value of the egress to port"
  type = number
}

variable "egress_protocol" {
  description = "value of the egress protocol"
  type = string
}

variable "egress_cidr_blocks" {
  description = "value of the egress cidr blocks"
}

variable "security_group_tag_name" {
  description = "value of the security group tag name"
  default = "alb-security-group"
}