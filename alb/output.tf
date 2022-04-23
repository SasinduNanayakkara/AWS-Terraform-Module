output "alb_id" {
  value = aws_alb.alb.id
  description = "value of the ALB id"
}

output "alb_arn" {
  value = aws_alb.alb.arn
  description = "value of the ALB arn"
}

output "target_group_arns" {
  description = "value of the target group arns"
  value = aws_alb_target_group.target-group.arn
}

output "security_group_id" {
  value = aws_security_group.security_groups.id
  description = "value of the security group id"
}



