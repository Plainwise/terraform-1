# Security Policy

## Sensitivity
This repository contains high-risk infrastructure definitions. While it does not contain secrets, it reveals the architecture and security posture of Plainwise environments. Treat this code with the same sensitivity as production application code.

## Secrets Management
**Strict Rule: Zero Secrets in Git.**

1.  **Codebase**: No passwords, API tokens, keys, or certificates may be committed to this repository.
2.  **State**: Terraform state files (`.tfstate`) typically contain sensitive data and must **never** be committed.
3.  **Variables**: Do not commit `terraform.tfvars` files containing secrets.
4.  **Injection**: Secrets must be injected at runtime via Environment Variables (e.g., `TF_VAR_db_password`) or fetched from a secure Secret Manager/Vault during the apply phase.

## Access Control
- Access to this repository is granted on a strict need-to-know basis.
- Commit access to the `main` branch is protected and requires at least one peer review.
- Force pushes to `main` are disabled.

## Incident Reporting
If you discover a security vulnerability or an exposed secret within this repository:
1.  **Do not create a public issue.**
2.  **Do not mention it in public communication channels.**
3.  Report it immediately to the Head of Engineering or the Security Lead via secure internal messaging.
4.  If a credential was exposed, **rotate it immediately**.

## Audit
All access and changes to this repository are logged and subject to audit.
