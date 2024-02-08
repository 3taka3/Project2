# Création du VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "MyVPC"
  }
  
}

# Création des sous-réseaux dans le VPC
resource "aws_subnet" "my_subnet" {
  depends_on = [aws_vpc.my_vpc]
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "MySubnet1"
  }
}

#Création routeur et gateway
resource "aws_internet_gateway" "my_igw" {
  depends_on = [aws_subnet.my_subnet]
  vpc_id = aws_vpc.my_vpc.id 

  tags = {
    Name = "MyGW1"
  }
}
resource "aws_route_table" "my_route" {
  vpc_id = aws_vpc.my_vpc.id
  depends_on = [aws_subnet.my_subnet]
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id 
  }
  tags = {
    Name = "MyRouteur1"
  }
}
# Association de la table de routage au sous-réseau par défaut
resource "aws_route_table_association" "route1_my_subnet" {
  depends_on = [aws_route_table.my_route]
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route.id
}

#Security groups
resource "aws_security_group" "access_security_group" {
  depends_on = [aws_internet_gateway.my_igw]
  name        = "sg_access"
  description = "access_security_group_master"

  ingress {
    from_port   = 0  
    to_port     = 9443
    protocol    = "tcp"
    cidr_blocks = ["10.0.1.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sparkm_security_group" {
  name        = "sg_master"
  description = "spark_security_group_master"

  ingress {
    from_port   = 9443  
    to_port     = 9443
    protocol    = "tcp"
    cidr_blocks = ["10.0.1.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "sparkc_security_group" {
  name        = "sg_core"
  description = "spark_security_group_core"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


#Spark Cluster
resource "aws_emr_cluster" "spark_cluster" {
  name          = "mon_cluster_spark"
  release_label = "emr-6.4.0" # Version d'EMR
  applications  = ["Hadoop","Spark"]
  service_role  = "EMR_EC2_Role"

  termination_protection            = false
  keep_job_flow_alive_when_no_steps = false

  # Configuration du réseau
  ec2_attributes {
    subnet_id                         = aws_subnet.my_subnet.id
    emr_managed_master_security_group = aws_security_group.sparkm_security_group.id
    emr_managed_slave_security_group  = aws_security_group.sparkc_security_group.id
    service_access_security_group             = aws_security_group.access_security_group.id
    instance_profile                  = "EC2_4EMR"
  }

  master_instance_group {
    instance_type = "m4.large"

  }

  core_instance_group {
    instance_type  = "c4.large"
    instance_count = 1

    ebs_config {
      size                 = "40"
      type                 = "gp2"
      volumes_per_instance = 1
    }
  }
}

resource "aws_instance" "spark" {

  ami           = "ami-0bdfe13e1582be381"
  instance_type = "t2.micro"

  tags = {
    Name = "Spark Cluster"
  }
}


terraform {
  backend "s3" {
    bucket = "s3goldenline"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

