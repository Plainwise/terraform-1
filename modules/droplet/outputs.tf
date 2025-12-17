output "id" {
  description = "The ID of the droplet"
  value       = digitalocean_droplet.this.id
}

output "ipv4_address" {
  description = "The IPv4 address of the droplet"
  value       = digitalocean_droplet.this.ipv4_address
}

output "urn" {
  description = "The uniform resource name of the droplet"
  value       = digitalocean_droplet.this.urn
}
