terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region      = "ap-northeast-1" 
    access_key  = "AKIAYHH63OKC5AVS3IDL"
    secret_key  = "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"
}
resource "aws_instance" "ubuntu_server"{
    ami = "ami-0ed99df77a82560e6"
    instance_type   = "t2.micro"
}

output "public_ip"{
    value   = aws_instance.demo-instance.public_ip
}