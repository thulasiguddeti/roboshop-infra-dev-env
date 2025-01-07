module "user" {
  source = "../../terraform-roboshop-app"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  component_sg_id = data.aws_ssm_parameter.user_sg_id.value
  private_subnet_ids = element(split(",",data.aws_ssm_parameter.private_subnet_ids.value),0)
  iam_instance_profile = var.iam_instance_profile

}
  