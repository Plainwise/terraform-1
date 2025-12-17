variable "name" {
  description = "The name of the droplet"
  type        = string
}

variable "region" {
  description = "The region to create the droplet in"
  type        = string
  default     = "ams3"
}

variable "size" {
  description = "The size of the droplet"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "image" {
  description = "The image to use for the droplet"
  type        = string
  default     = "ubuntu-22-04-x64"
}

variable "ssh_keys" {
  description = "A list of SSH key IDs or fingerprints to enable in the format [12345, 123456]"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A list of tags to apply to the droplet"
  type        = list(string)
  default     = []
}

variable "vpc_uuid" {
  description = "The ID of the VPC where the droplet will be located"
  type        = string
  default     = null
}

variable "user_data" {
  description = "Cloud-init user data"
  type        = string
  default     = null
}
