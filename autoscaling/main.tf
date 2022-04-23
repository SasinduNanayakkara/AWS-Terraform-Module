resource "aws_launch_configuration" "launch_config" {
  name_prefix = var.name_prefix_launch_config
  image_id = var.image_id
  instance_type = var.instance_type
  security_groups = [ var.security_group_id ]
}

resource "aws_autoscaling_group" "autoscaling" {
  name = var.name_prefix_autoscaling
  vpc_zone_identifier = var.zone_identifier
  launch_configuration = "${aws_launch_configuration.launch_config.name}"
  max_size = var.max_size
  min_size = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type = var.health_check_type
  force_delete = var.force_delete
}

resource "aws_autoscaling_policy" "autoscaling_policy" {
  name = var.name_autoscaling_policy
  autoscaling_group_name = "${aws_autoscaling_group.autoscaling.name}"
  adjustment_type = var.adjustment_type
  scaling_adjustment = var.scaling_adjustment
  cooldown = var.cooldown
  policy_type = var.policy_type
}

resource "aws_cloudwatch_metric_alarm" "cpu-alarm" {
  alarm_name = var.name_alarm
  alarm_description = var.alarm_description
  comparison_operator = var.comparison_operator
  evaluation_periods = var.evaluation_periods
  metric_name = var.metric_name
  namespace = var.namespace
  period = var.period
  statistic = var.statistic
  threshold = var.threshold
  
  dimensions = {
    "AutoScalingGroupName" = "${aws_autoscaling_group.autoscaling.name}"
  }

  actions_enabled = var.actions_enabled
}

