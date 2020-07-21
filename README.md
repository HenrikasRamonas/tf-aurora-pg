# AWS RDS Aurora Terraform module

Terraform module which creates RDS Aurora resources on AWS.

These types of resources are supported:

* [RDS Cluster](https://www.terraform.io/docs/providers/aws/r/rds_cluster.html)
* [RDS Cluster Instance](https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html)
* [DB Subnet Group](https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html)
* [Application AutoScaling Policy](https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html)
* [Application AutoScaling Target](https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html)

## Available features

- Autoscaling of replicas

## Outputs

| Name | Description |
|------|-------------|
| cluster\_endpoint | The cluster endpoint |
| cluster\_id | The ID of the cluster |
| cluster\_master\_password | The master password |
| cluster\_master\_username | The master username |
| cluster\_port | The port |
| cluster\_reader\_endpoint | The cluster reader endpoint |
| security\_group\_id | The security group ID of the cluster |
