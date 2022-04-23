output "launch_configuration_name" {
  value = aws_launch_configuration.launch_config.name_prefix
  description = "value of the launch configuration name"
}

output "launch_configuration_arn" {
  value = aws_launch_configuration.launch_config.arn
  description = "value of the launch configuration arn"
}

output "launch_configuration_id" {
  value = aws_launch_configuration.launch_config.id
  description = "value of the launch configuration id"
}

output "auto_scaling_group_name" {
  value = aws_autoscaling_group.autoscaling.name
  description = "value of the auto scaling group name"
}

output "auto_scaling_group_arn" {
  value = aws_autoscaling_group.autoscaling.arn
  description = "value of the auto scaling group arn"
}

output "auto_scaling_group_id" {
  value = aws_autoscaling_group.autoscaling.id
  description = "value of the auto scaling group id"
}