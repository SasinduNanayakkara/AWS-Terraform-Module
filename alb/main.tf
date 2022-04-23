resource "aws_alb" "alb" {
  name = var.alb_name
  subnets = var.subnet1_id
  security_groups = ["${aws_security_group.security_groups.id}"]
  load_balancer_type = var.load_balancer_type
  internal = var.internal
  
  enable_deletion_protection = var.deltion_protection
}

resource "aws_alb_target_group" "target-group" {
  name = var.targetgroup_name
  port = var.port
  protocol = var.protocol
  vpc_id = var.vpc_id
}

resource "aws_alb_target_group_attachment" "frontend-attachment-1" {
  target_group_arn = "${aws_alb_target_group.target-group.arn}"
  target_id = "${aws_alb.alb.id}"
  port = var.alb_port
}

resource "aws_alb_listener" "listener" {
  load_balancer_arn = "${aws_alb.alb.arn}"
  port = var.port

  default_action {
    target_group_arn = "${aws_alb_target_group.target-group.arn}"
    type = var.default_action_type 
  }
}

resource "aws_alb_listener_rule" "alb_rule" {
  listener_arn = "${aws_alb_listener.listener.arn}"
  priority = var.priority #100

  action {
    type = var.action_type # forward
    target_group_arn = "${aws_alb_target_group.target-group.arn}"
  }

  condition {
    path_pattern {
      values = ["/static/*"]
    }
  }

  condition {
    host_header {
      values = ["example.com"]
    }
  }
}

resource "aws_security_group" "security_groups" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id

  ingress {
    description      = var.ingress_description
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.ingress_protocol
    cidr_blocks      = [var.ingress_cidr_blocks]
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = [var.egress_cidr_blocks]
  }

  tags = {
    Name = var.security_group_tag_name
  }
}