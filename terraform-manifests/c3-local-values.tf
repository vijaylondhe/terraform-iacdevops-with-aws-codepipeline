locals {
  owners = var.buisness_division
  environment = var.environment
  name = "${var.buisness_division}-${var.environment}"
  common_tags = {
      owners = local.owners
      environment = local.environment
  }
  asg_tags = [
    {
      key                 = "Project"
      value               = "megasecret"
      propagate_at_launch = true
    },
    {
      key                 = "foo"
      value               = ""
      propagate_at_launch = true
    },
  ]
}