resource "aws_ssoadmin_permission_set" "permset" {
  name             = var.name
  description      = var.descrição
  instance_arn     = tolist(data.aws_ssoadmin_instances.datainstance.arns)[0]
  relay_state      = "https://s3.console.aws.amazon.com/s3/home?region=us-east-1#"
  session_duration = "PT2H"
}

