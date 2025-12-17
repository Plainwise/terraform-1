# Operational Runbook

This document defines the contract for operating the Plainwise infrastructure.

## Golden Rules
1.  **Code First**: If it's not in Terraform, it doesn't exist.
2.  **Plan First**: Never run `apply` without seeing a `plan` first.
3.  **Clean Code**: No code enters `main` without passing `terraform fmt` and validation checks.

## Routine Operations

### 1. Local Development
Before pushing code:
```bash
# Format code
terraform fmt -recursive

# Validate syntax (in your specific stack)
cd stacks/dev/my-stack
terraform validate
```

### 2. Making Changes
1.  Create a branch from `main`.
2.  Make changes in the target stack(s).
3.  Verify locally (fmt/validate).
4.  Push branch and open Pull Request.
5.  **Review the Plan**: The CI/CD system (or a manual run) will produce a plan. Check it carefully for deletions or unexpected replacements.

### 3. Applying Changes
*Currently: Manual Apply (Subject to strict approval).*
*Future: Automated via Terraform Cloud/GitHub Actions.*

To apply manually (Admin only):
```bash
export DIGITALOCEAN_TOKEN="sw-..."
cd stacks/prod/target-stack
terraform init
terraform plan -out=tfplan
# REVIEW THE PLAN
terraform apply tfplan
```

## Guardrails
- **Destructive Changes**: Any plan that destroys resources (red `-` lines) requires double verification.
- **State Manipulation**: Usage of `terraform state` commands (rm, mv, import) is restricted to senior engineers.
- **Provider Upgrades**: Upgrading provider versions in `versions.tf` must be tested in `dev` first.
