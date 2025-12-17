# Plainwise Infrastructure (Terraform)

This repository contains proprietary infrastructure-as-code for Plainwise / GewoonAI B.V., implemented using Terraform.

It defines and manages cloud infrastructure such as networking, compute, firewalls, DNS, and supporting platform components across one or more environments.

This repository is not open source.

## Purpose

The goals of this repository are to:

- Serve as the single source of truth for Plainwise infrastructure
- Enable reproducible, auditable, and controlled infrastructure changes
- Support multiple environments (e.g. production, development)
- Allow future cloud portability while remaining provider-specific where required

All infrastructure changes are expected to be performed through Terraform, not manual cloud console actions.

## Scope

Depending on the environment, this repository may manage:

- Virtual machines (Droplets / VMs)
- Virtual networks (VPCs)
- Firewalls and security baselines
- DNS zones and records
- Load balancers
- Supporting infrastructure services
- Environment-level configuration and tagging

Application code is explicitly out of scope.

## Repository Structure (high level)

```
infra/
├── envs/            # Environment-specific configurations (prod, dev, etc.)
├── modules/         # Reusable Terraform modules
└── README.md
```

- Environments define what exists
- Modules define how things are built

Each environment is isolated via its own Terraform state.

## Terraform Usage Model

- Terraform state is managed remotely
- Changes follow a plan → review → apply workflow
- Existing infrastructure may be imported, not recreated
- Manual changes outside Terraform are discouraged and treated as drift

This repository assumes familiarity with Terraform fundamentals.

## Access & Permissions

Access to this repository is restricted.

Granting repository access:

- Does not grant ownership or usage rights
- Does not permit reuse outside Plainwise
- Is limited to authorized personnel and contractors

All access is logged and auditable.

## License & Legal

This repository is proprietary and confidential.

Use, copying, modification, distribution, or reuse of any part of this repository is strictly prohibited without prior written consent.

See the `LICENSE` file for full legal terms.

## Contact

For permissions, questions, or legal matters:

GewoonAI B.V.

Trading name: Plainwise

📧 info@plainwise.com

📞 +31 (0)85 00 00 838

📍 Zeist, The Netherlands

KvK: 92513921

VAT: NL866081963B01

