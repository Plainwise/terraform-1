# Architecture

## Mental Model
The repository is designed around the concept of **Stacks**. A Stack is a collection of infrastructure resources that:
1.  Are deployed together.
2.  Share a common lifecycle.
3.  Belong to a specific logical domain (e.g., DNS, Networking, an Application).

## Isolation Strategy
We enforce isolation at two levels to minimize "blast radius":

### 1. Environment Isolation (`stacks/prod` vs `stacks/dev`)
Resources for different environments are kept effectively air-gapped in the folder structure. There is no shared state between Prod and Dev. This prevents accidental changes in Development from propagating to Production.

### 2. Domain Isolation (`stacks/prod/dns` vs `stacks/prod/network`)
Within an environment, resources are split by domain.
- **Benefit**: Changing a DNS record does not risk accidentally deleting a firewall rule or a database.
- **Trade-off**: Requires careful management of dependencies (e.g., passing a VPC ID from the network stack to the app stack).

## Provider Strategy
**Current**: DigitalOcean (DO)
**Future**: Microsoft Azure

The `platforms/` directory is reserved for provider-specific implementation logic.
- `platforms/digitalocean`: Contains modules and wrappers specific to DO resources.
- `platforms/azure`: Placeholder for future Azure implementations.

When Azure is introduced, we will create parallel stacks (e.g., `stacks/prod/azure-dns`) or migrate existing stacks, depending on the migration strategy. This directory structure supports a multi-provider reality without cluttering the root.

## Anti-Patterns
- **Monoliths**: Do not put all resources for an environment into a single `main.tf`. It makes planning slow and risky.
- **Hard dependency on Local State**: Never rely on local `.tfstate` files. State must be remote and locked.
- **Manual "ClickOps"**: Never create resources in the Cloud Console and hope to "import" them later. Start with code.
