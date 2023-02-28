resource "aws_elasticache_parameter_group" "pg" {
  name   = "${local.TAG_NAME}-pg"
  family =  var.PG_FAMILY
}



