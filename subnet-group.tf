resource "aws_elasticache_subnet_group" "subnet-gp" {
  name       = "${local.TAG_NAME}-subnet-group"
  subnet_ids = var.PRIVATE_SUBNET_ID
}