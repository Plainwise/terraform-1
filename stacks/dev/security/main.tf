module "wazuh_1" {
  source = "../../../modules/droplet"

  name   = "wazuh-1"
  region = var.region
  size   = "s-4vcpu-8gb" # Assuming a reasonable size for a main Wazuh instance
  image  = "ubuntu-22-04-x64"
  tags   = ["security", "wazuh"]
}

module "wazuh_testing" {
  source = "../../../modules/droplet"

  name   = "wazuh-testing"
  region = var.region
  size   = "s-2vcpu-4gb" # Smaller size for testing
  image  = "ubuntu-22-04-x64"
  tags   = ["security", "wazuh", "testing"]
}
