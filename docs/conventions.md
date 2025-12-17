# Conventions

## Naming Standards
Consistency makes the infrastructure predictable.

### Resources
Format: `plainwise-<env>-<stack>-<name>`
- `plainwise-prod-dns-mainzone`
- `plainwise-dev-app-webserver`

### Stacks
Use kebab-case.
- **Good**: `partner-portal`, `dns`, `security-groups`
- **Bad**: `PartnerPortal`, `dns_stuff`

### Environments
- `prod`: Production. Stable, critical.
- `staging`: Pre-production. Mirror of prod for testing.
- `dev`: Development. Volatile, testing.

## Folder Ownership
- `stacks/<env>/<stack>/`: **The only place where `terraform apply` is run.**
- `modules/`: Library code. **Never** run `terraform apply` here.
- `platforms/`: Helper code. **Never** run `terraform apply` here.

## Stack File Structure
Every stack folder **MUST** contain these 6 files, even if empty/minimal:

1.  `main.tf`: Resource definitions and module calls.
2.  `variables.tf`: Input variable declarations (with types and descriptions).
3.  `outputs.tf`: Output value definitions.
4.  `versions.tf`: Terraform version and provider source constraints.
5.  `providers.tf`: Provider configuration blocks (empty of secrets).
6.  `locals.tf`: Standard stack metadata (`env`, `project`, `stack`).

## Workflows

### Adding a New Stack
1.  Create `stacks/<env>/<new-stack>/`.
2.  Populate the 6 base files.
3.  Run `terraform fmt`.
4.  Commit to a feature branch.

### Modifying Modules
1.  Update the code in `modules/<name>/`.
2.  Version bump the module if necessary (or update the stack to point to the new hash).
3.  Test by running `terraform plan` in a `dev` stack that uses the module.
