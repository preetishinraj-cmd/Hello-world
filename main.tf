terraform {

 backend "s3" {
        bucket = "firstec2-instance-s3bucket-16032025"
        key    = "S3-backend-tfstate"  # Optional:  Specify a path for state files
        region = "us-east-1"
        encrypt = true  # Optional: Encrypt the state file
      }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.5.0"
    }

  }
}

#Configure the AWS Provider`
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "first_ec2_instance" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  for_each      = toset(var.aws_instance_names)

  tags = {
    //Name =   var.aws_instance_names[count.index]# Instance Name
    Name        = each.value
    Environment = "Development" # Other tags
  }
}
