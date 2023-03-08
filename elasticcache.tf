resource "aws_elasticache_cluster" "cluster" {
  cluster_id           = "${local.TAG_NAME}-cluster"
  engine               =  var.ENGINE
  node_type            =  var.INSTANCE_CLASS
  num_cache_nodes      =  var.NO_OF_NODES
  parameter_group_name =  aws_elasticache_parameter_group.pg.name
  engine_version       =  var.ENGINE_VERSION
  port                 =  var.PORT
  subnet_group_name    =  aws_elasticache_subnet_group.subnet-gp.name
  security_group_ids   =  [aws_security_group.sg.id]
}
