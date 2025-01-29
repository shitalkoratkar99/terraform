module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "mumbai"
  monitoring             = true
  vpc_security_group_ids = ["sg-018aae70820fdea09]
  subnet_id              = "subnet-09d10e9f3765e2e5c"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}