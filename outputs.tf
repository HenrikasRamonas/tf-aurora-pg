output "this_rds_cluster_id" {
  description = "The ID of the cluster"
//  value       = aws_rds_cluster.this.id
  value       = concat(aws_rds_cluster.main.*.id, [""])[0]
}

output "this_rds_cluster_resource_id" {
  description = "The Resource ID of the cluster"
//  value       = aws_rds_cluster.this.cluster_resource_id
  value       = concat(aws_rds_cluster.main.*.cluster_resource_id, [""])[0]  
}

output "this_rds_cluster_endpoint" {
  description = "The cluster endpoint"
//  value       = aws_rds_cluster.this.endpoint
  value       = concat(aws_rds_cluster.main.*.endpoint, [""])[0]    
}

output "this_rds_cluster_reader_endpoint" {
  description = "The cluster reader endpoint"
//  value       = aws_rds_cluster.this.reader_endpoint
  value       = concat(aws_rds_cluster.main.*.reader_endpoint, [""])[0]    
}

// database_name is not set on `aws_rds_cluster` resource if it was not specified, so can't be used in output
output "this_rds_cluster_database_name" {
  description = "Name for an automatically created database on cluster creation"
//  value       = var.database_name
  value       = concat(aws_rds_cluster.main.*.database_name, [""])[0]    
}

output "this_rds_cluster_master_username" {
  description = "The master username"
//  value       = aws_rds_cluster.this.master_username
  value       = concat(aws_rds_cluster.main.*.master_username, [""])[0]    
}

output "this_rds_cluster_master_password" {
  description = "The master password"
//  value       = aws_rds_cluster.this.master_password
  value       = concat(aws_rds_cluster.main.*.master_password, [""])[0]    
  sensitive   = false
}

output "this_rds_cluster_port" {
  description = "The port"
//  value       = aws_rds_cluster.this.port
  value       = concat(aws_rds_cluster.main.*.port, [""])[0]    
}




output "cluster_port" {
  description = "The port"
  value       = concat(aws_rds_cluster.main.*.port, [""])[0]
}

output "security_group_id" {
  description = "The security group ID of the cluster"
  value       = concat(aws_security_group.main.*.id, [""])[0]
}