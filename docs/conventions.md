# Conventions

## Naming
Resources should follow the naming convention: `plainwise-<env>-<stack>-<resource>`.

## Folder Structure
- stacks/<env>/<stack>: Runnable Terraform configurations.
- modules/<name>: Reusable logic.
- platforms/<provider>: Provider-specific implementation details.
