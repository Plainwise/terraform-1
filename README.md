# Plainwise Infrastructure Repository

## Overview
This repository serves as the single source of truth for the cloud infrastructure of Plainwise / GewoonAI B.V. It manages resources across multiple environments (Production, Staging, Development) and domains (MasterSoftware, Portals, Backups).

**Scope**:
- Provisioning of cloud resources (Compute, Networking, DNS, Security Groups).
- Infrastructure lifecycle management via Terraform.

**Out of Scope**:
- Application code deployment (managed via separate CI/CD pipelines).
- Ad-hoc manual changes in cloud consoles (Strictly Prohibited).

## Philosophy
This repository adheres to **Infrastructure as Code (IaC)** principles:
1.  **Declarative**: The code defines the desired state; Terraform makes it so.
2.  **Immutable**: Avoid in-place modification of critical resources; prefer replacement.
3.  **Reviewed**: All changes must pass through a Pull Request process with `terraform plan` output reviewed.
4.  **No Drift**: The canonical state is in this repo. Any manual changes in the console will be overwritten.

## Structure
- `stacks/`: Runnable Terraform configurations, isolated by environment and domain (e.g., `stacks/prod/dns`). This is where `terraform apply` is run.
- `modules/`: Reusable, versioned infrastructure components (e.g., `modules/droplet`).
- `platforms/`: Provider-specific implementations (e.g., DigitalOcean, Azure).
- `docs/`: Architectural decisions, conventions, and runbooks.

## Access & Permissions
- write access is restricted to the Infrastructure Engineering team.
- **No secrets** are stored in this repository.
- Infrastructure state is managed remotely (TBD).

## License
Proprietary and Confidential. Property of GewoonAI B.V.
Unauthorized copying or distribution of this code is strictly prohibited.
