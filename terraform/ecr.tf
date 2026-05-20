resource "aws_ecr_repository" "myapp" {
  name = "myapp"
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = local.tags
}
