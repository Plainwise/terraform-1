variable "region" {
  type        = string
  description = "Cloud region identifier."
  default     = "ams3"
}
variable "ssh_keys" {
  type        = list(string)
  description = "List of SSH key IDs or fingerprints to add to voters."
  default     = []
}
