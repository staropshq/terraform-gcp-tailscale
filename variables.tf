variable "vpc_subnet_cidr" {
  description = "CIDR to use for the GCP subnet. Default: 10.224.0.0/26"
  type        = string
  default     = "10.224.0.0/24"
}

variable "instance_type" {
  description = "GCP instance type to use. Default: f1-micro"
  type        = string
  default     = "f1-micro"
}

variable "tailscale_auth_key" {
  description = "Tailscale authentication key for the node (required)"
  type        = string
}

variable "hostname" {
  description = "Hostname to use when connecting to tailscale. Default: tailscale-relay"
  type        = string
  default     = "tailscale-relay"
}

variable "preemptible" {
  description = "Use / do not use a preemptible GGE instance (Default: false)"
  type        = bool
  default     = false
}

variable "instance_network_tags" {
  description = "List of network tags to attach to the instance (Default: [])"
  type        = list(string)
  default     = []
}

variable "region" {
  description = "GCP region to use. Default: us-central1"
  type        = string
  default     = "us-central1"
}
