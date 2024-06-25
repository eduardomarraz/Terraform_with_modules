module "vpc" {
    source            = "./modulos/vpc"
    aws_region        = "us-east-1"
    vpc_cidr_block    = "172.16.0.0/16"
    subnet_cidr_block = "172.16.10.0/24"
}

module "ec2" {
    source         = "./modulos/ec2"
    subnet_id      = module.vpc.my_subnet_id
    vpc_id         = module.vpc.my_vpc_id
    instance_type  = "t2.micro"
    key_name       = "vockey"
    ami            = "ami-08a0d1e16fc3f61ea"
}

modulo "rds"{
    source         = "./modulos/rds"
    engine         =  module.reds.rds_id

}
