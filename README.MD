### AWS VPC Module

This module creates following resources. We are using High availability and we are getting first 2 AZ automatically.
* VPC
* Internet Gateway with VPC association
* 2 Public subnets in us-east-1a and us-east-1b
* 2 Private subnets in us-east-1a and us-east-1b
* 2 Database subnets in us-east-1a and us-east-1b
* Elastic IP
* NAT gateway in us-east-1a public subnet
* Public route table
* Private route table
* Database route table
* Subnets and Route table association
* VP peering connections if user requests
* Adding the peering route in default VPC, if user don't provide acceptor  VPC explicitly
* Adding the peering routes in public, private and database route tables.

### Inputs

* project_name (Required) - your project name
* environment (Required) - which environment you are working in
* vpc_cidr (Optional) - Default value is 10.0.0.0/16 - Users can override
* enable_dns_hostnames(Optional) - Default value is true
* common_tags (Optional) - Better to provide
* vpc_tags (Optional) - Better to provide
* igw_tags (Optional) - Default value is empty. type is map
* public_subnets_cidr (Required) - User must provide 2 valid public subnets CIDR
* public_subnets_tags (Optional) - Default value is empty. type is map
* private_subnets_cidr (Required) - User must provide 2 valid private subnets CIDR
* private_subnets_tags (Optional) - Default value is empty. type is map
* database_subnets_cidr (Required) - User must provide 2 valid database subnets CIDR
* database_subnets_tags (Optional) - Default value is empty. type is map
* nate_gateway_tags (Optinal) - Default value is empty. type is map
* public_route_table_tags (Optional) - Default value is empty. type is map
* private_route_table_tags (Optional) - Default value is empty. type is map
* database_route_table_tags (Optional) - Default value is empty. type is map
* is_peering_required (Optional) - default value is false
* acceptor_vpc_id (Optional) - default value is default VPC ID
* vpc_peering_tags (Optional) - Default value is empty. type is map

### Outputs
* vpc_id - VPC ID created
* public_subnets_ids - 2 public subnet ID created
* private_subnets_ids - 2 private subnet ID created
* database_subnets_ids - 2 database subnet ID created