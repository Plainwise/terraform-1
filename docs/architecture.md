# Architecture

## Stacks per Environment
We use a stack-per-environment approach to isolate failure domains. Each environment (prod, dev) has its own independent set of stacks.

## Stack Definitions
- dns: Cloud DNS management
- network: VPCs, subnets, gateways
- security: Firewalls, security groups
- app stacks (mastersoftware, etc.): Application specific resources

## Provider Separation
Currently using DigitalOcean. Azure will be introduced in future phases.
