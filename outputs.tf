output "REDIS_ENDPOINT" {
  value = aws_elasticache_cluster.cluster.cache_nodes[0].address
}