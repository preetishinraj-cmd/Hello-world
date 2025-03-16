terraform {
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
  access_key = "AKIAWIKAXHH3HHIXOJ6L"
  secret_key = "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"
}

resource "aws_instance" "first_ec2_instance" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  tags = {
    //Name =   var.aws_instance_names[count.index]# Instance Name
    Name = "CICD Web Server"
    Environment = "Development" # Other tags
  }
}
