variable "name" {
  type        = "string"
  description = "Name to be used on all the resources as identifier."
}

variable "version" {
  default     = "1.10"
  description = "Kubernetes version to use for the cluster."
}

variable "availability_zones" {
  default     = []
  description = "List of availability zones in the region"
}

variable "availability_zone_count" {
  default     = 2
  description = "Number of availability zones used in the region."
}

variable "default_vpc" {
  default     = false
  description = "Use the default VPC for creating your cluster resources."
}

variable "vpc_id" {
  default     = ""
  description = "ID of the VPC where to create the cluster resources."
}

variable "cluster_subnet_ids" {
  default     = []
  description = "A list of VPC subnet IDs which the cluster uses."
}

variable "node_subnet_ids" {
  default     = []
  description = "A list of VPC subnet IDs which the worker nodes are using."
}

variable "node_instance_type" {
  default     = "m5.large"
  description = "Instance type of the worker node."
}

variable "node_min_size" {
  default     = 1
  description = "Minimum size of the worker node AutoScaling Group."
}

variable "node_max_size" {
  default     = 2
  description = "Maximum size of the worker node AutoScaling Group."
}

variable "node_user_data" {
  default     = ""
  description = "Additional user data used when bootstrapping the EC2 instance."
}

variable "workstation_cidr_blocks" {
  default     = []
  description = "CIDR blocks from which to allow inbound traffic to the Kubernetes control plane."
}

variable "key_pair" {
  default     = ""
  description = "Adds an EC2 Key Pair to the cluster nodes."
}

variable "enable_kubectl" {
  default     = false
  description = "When enabled, it will merge the cluster's configuration with the one located in ~/.kube/config."
}

variable "enable_dashboard" {
  default     = false
  description = "When enabled, it will install the Kubernetes Dashboard."
}

variable "enable_calico" {
  default     = false
  description = "When enabled, it will install Calico for network policy support."
}