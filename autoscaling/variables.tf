variable "name_prefix_launch_config" {
  description = "name prefix of the launch configuration"
  default = "launch-config"
}

variable "security_group_id" {
  description = "value of scurity group id"
  type = string
}

variable "image_id" {
  description = "value image id"
  type = string
}
variable "ami" {
  description = "value of the AMI"
  type = map(string)
  default = {
    "us-west-1" = "ami-0454207e5367abf01"
    "us-west-2" = "ami-0688ba7eeeeefe3cd"
  }
}

variable "AWS_REGION" {
  description = "value of the AWS_REGION"
  default = "us-west-1"
}

variable "instance_type" {
  description = "value of the instance type"
  default = "t2.micro"
}

variable "key_name" {
  description = "value of the key name"
    default = "example"
}
variable "name_prefix_autoscaling" {
  description = "value of the name prefix of the autoscaling group"
  default = "autoscaling"
}

variable "zone_identifier" {
  description = "value of the zone identifier"
}

variable "max_size" {
  description = "value of the max size in the autoscaling group"
  default = "2"
}

variable "min_size" {
  description = "value of the min size in the autoscaling group"
  default = "1"
}

variable "health_check_grace_period" {
  description = "value of the health check grace period"
  default = "300"
}

variable "health_check_type" {
  description = "value of the health check type"
  default = "EC2"
}

variable "force_delete" {
  description = "value of the force delete"
  type = bool
  default = "true"
}

variable "name_autoscaling_policy" {
  description = "name of the autoscaling policy"
  default = "example-cpu-policy"
}

variable "adjustment_type" {
  description = "value of the adjustment type"
  default = "ChangeInCapacity"
}

variable "scaling_adjustment" {
  description = "value of the scaling adjustment"
  default = "1"
}

variable "cooldown" {
  description = "value of the cooldown"
  default = "300"
}

variable "policy_type" {
  description = "value of the policy type"
  default = "SimpleScaling"
}

variable "name_alarm" {
  description = "value of the name of the alarm"
  default = "cpu-alarm"
}

variable "alarm_description" {
  description = "value of the alarm description"
  default = "CPU alarm"
}

variable "comparison_operator" {
  description = "value of the comparison operator"
  default = "GreaterThanOrEqualToThreshold"
}

variable "evaluation_periods" {
  description = "value of the evaluation periods"
  default = "2"
}

variable "metric_name" {
  description = "value of the metric name"
  default = "CPUUtilization"
}

variable "namespace" {
  description = "value of the namespace"
  default = "AWS/EC2"
}

variable "period" {
  description = "value of the period"
  default = "120"
}

variable "statistic" {
  description = "value of the statistic"
  default = "Average"
}

variable "threshold" {
  description = "value of the threshold"
  default = "30"
}

variable "actions_enabled" {
  description = "value of the actions enabled"
  type = bool
  default = "true"
}