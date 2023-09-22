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
resource {

}

output "public_ip"{
    value   = aws_instance.demo-instance.public_ip
}