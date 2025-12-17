# Runbook

## Setup
1. Install pre-commit: `brew install pre-commit`
2. Install hooks: `pre-commit install`

## Local Validation
Run `terraform fmt -recursive` to format code.
Run `terraform validate` inside a stack folder to check syntax.

## Apply Rules
Do not run `terraform apply` without approval.
Credentials must be provided via environment variables.
