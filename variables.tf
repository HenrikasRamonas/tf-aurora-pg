variable "name" {
  description = "Name given resources"
  type        = string
}

variable "ca_cert_identifier" {
  description = "The identifier of the CA certificate for the DB instances"
  default     = ""
}

variable "create_resources" {
  description = "Whether to create the Aurora cluster and related resources"
  default     = true
  type        = bool
}

variable "subnet_ids" {
  description = "List of subnet IDs to use"
  type        = list(string)
}

variable "identifier_prefix" {
  description = "Prefix for cluster and instance identifier"
  default     = ""
}

variable "security_group_name_prefix" {
  description = "Prefix for security group name"
  default     = "aurora-"
}

variable "replica_count" {
  description = "Number of reader nodes to create.  If `replica_scale_enable` is `true`, the value of `replica_scale_min` is used instead."
  default     = 1
}

variable "allowed_security_groups" {
  description = "A list of Security Group ID's to allow access to."
  default     = []
}

variable "extra_security_groups" {
  description = "A list of Security Group IDs to add to the cluster"
  default     = []
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type to use"
  default     = "db.r4.large"
}

variable "publicly_accessible" {
  description = "Whether the DB should have a public IP address"
  default     = false
}

variable "username" {
  description = "Master DB username"
  default     = "root"
}

variable "password" {
  description = "Master DB password"
  default     = ""
}

variable "final_snapshot_identifier_prefix" {
  description = "The prefix name to use when creating a final snapshot on cluster destroy, appends a random 8 digits to name to ensure it's unique too."
  default     = "final-"
}

variable "skip_final_snapshot" {
  description = "Should a final snapshot be created on cluster destroy"
  default     = false
}

variable "backup_retention_period" {
  description = "How long to keep backups for (in days)"
  default     = 7
}

variable "preferred_backup_window" {
  description = "When to perform DB backups for the cluster"
  default     = "02:00-03:00"
}

variable "preferred_maintenance_window" {
  description = "When to perform DB maintenance for the cluster"
  default     = "sun:05:00-sun:06:00"
}

variable "preferred_backup_window_instance" {
  description = "When to perform DB backups for instances"
  default     = ""
}

variable "preferred_maintenance_window_instance" {
  description = "When to perform DB maintenance for instances"
  default     = ""
}

variable "port" {
  description = "The port on which to accept connections"
  default     = ""
}

variable "apply_immediately" {
  description = "Determines whether or not any DB modifications are applied immediately, or during the maintenance window"
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Determines whether minor engine upgrades will be performed automatically in the maintenance window"
  default     = true
}

variable "db_parameter_group_name" {
  description = "The name of a DB parameter group to use"
  default     = "default.aurora5.6"
}

variable "db_cluster_parameter_group_name" {
  description = "The name of a DB Cluster parameter group to use"
  default     = "default.aurora5.6"
}

variable "snapshot_identifier" {
  description = "DB snapshot to create this database from"
  default     = ""
}

variable "storage_encrypted" {
  description = "Specifies whether the underlying storage layer should be encrypted"
  default     = false
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  default     = ""
}

variable "engine" {
  description = "Aurora database engine type, currently aurora, aurora-mysql or aurora-postgresql"
  default     = "aurora"
}

variable "engine_version" {
  description = "Aurora database engine version."
  default     = "5.6.10a"
}

variable "replica_autoscaling" {
  type        = string
  default     = false
  description = "Whether to enable autoscaling for RDS Aurora (MySQL) read replicas"
}

variable "replica_scale_max" {
  type        = string
  default     = 0
  description = "Maximum number of replicas to allow scaling for"
}

variable "replica_scale_min" {
  type        = string
  default     = 1
  description = "Maximum number of replicas to allow scaling for"
}

variable "replica_scale_cpu" {
  type        = string
  default     = 95
  description = "CPU usage to trigger autoscaling at"
}

variable "replica_scale_in_cooldown" {
  type        = string
  default     = 300
  description = "Cooldown in seconds before allowing further scaling operations after a scale in"
}

variable "replica_scale_out_cooldown" {
  type        = string
  default     = 300
  description = "Cooldown in seconds before allowing further scaling operations after a scale out"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to add to all resources."
}

variable "performance_insights_enabled" {
  type        = string
  default     = false
  description = "Specifies whether Performance Insights is enabled or not."
}

variable "deletion_protection" {
  description = "The database can't be deleted when this value is set to true."
  default     = true
}

variable "performance_insights_kms_key_id" {
  type        = string
  default     = ""
  description = "The ARN for the KMS key to encrypt Performance Insights data."
}

variable "create_timeout" {
  type        = string
  default     = "120m"
  description = "Timeout used for Cluster creation"
}

variable "update_timeout" {
  type        = string
  default     = "120m"
  description = "Timeout used for Cluster modifications"
}

variable "delete_timeout" {
  type        = string
  default     = "120m"
  description = "Timeout used for destroying cluster. This includes any cleanup task during the destroying process."
}

variable "reader_endpoint_suffix" {
  type        = string
  default     = "-ro"
  description = "Suffix for the Route53 record pointing to the cluster reader endpoint. Only used if route53_zone_id is passed also"
}
