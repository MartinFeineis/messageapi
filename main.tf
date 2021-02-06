provider "aws" {
  region  = "us-east-1"
  access_key = "access-key"
  secret_key = "secret-key"
}


resource "aws_ecr_repository" "messageapi" {
  name                 = "dj_message_api"
  image_tag_mutability = "MUTABLE"
    image_scanning_configuration {
       scan_on_push = true
    }
}

output "ecr_id" {
  value = aws_ecr_repository.messageapi.registry_id
}

output "ecr_url" {
  value = aws_ecr_repository.messageapi.repository_url
}

output "ecr_arn" {
  value = aws_ecr_repository.messageapi.arn
}
