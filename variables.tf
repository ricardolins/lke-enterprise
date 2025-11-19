variable "linode_token" {
  description = "Linode API Token"
  type        = string
  sensitive   = true
}

variable "k8s_version" {
  description = "Kubernetes version for the LKE cluster"
  type        = string
  default     = "v1.31.8+lke5"
}