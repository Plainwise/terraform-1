# Security Policy

Plainwise / GewoonAI B.V. takes the security of our infrastructure and our customers’ data seriously. This repository contains infrastructure-as-code (IaC) and may reference sensitive configuration. Please follow the guidance below when reporting vulnerabilities and when contributing.

## Reporting a Vulnerability

If you believe you have found a security vulnerability, potential data exposure, or configuration weakness relating to this repository or any infrastructure it manages:

- Email: info@plainwise.com
- Subject: "Security Report – terraform-1"
- Include: a clear description, steps to reproduce, impacted components, logs/screenshots (redact secrets), and your contact information.

Please do not create public issues or pull requests for suspected vulnerabilities.

We aim to acknowledge valid reports within 3 business days and provide status updates at least every 7 business days until resolution. Severity and remediation timelines are determined at our discretion based on impact and exploitability.

## Coordinated Disclosure

We request that you do not publicly disclose details of the issue until we have confirmed and remediated it, or 90 days have passed, whichever occurs first, unless otherwise agreed.

## Safe Harbor

We will not initiate legal action against good-faith security research that:

- Accesses only your own accounts and data (no unauthorized access to others’ data)
- Avoids privacy violations and service degradation
- Does not exfiltrate more data than strictly necessary to demonstrate the issue
- Respects rate limits and operational stability
- Immediately reports vulnerabilities to us and deletes any obtained data after reporting

Activities that are not permitted include (non-exhaustive):

- Denial of service, stress testing, or brute force attacks
- Social engineering of our staff or contractors
- Physical attacks against facilities or devices
- Use of automated scanning tools against production without prior written approval

## Scope and Notes for IaC Repositories

This is an infrastructure repository. When assessing or reporting issues, please keep in mind:

- Terraform state may contain sensitive data. Do not request or attempt to access state files unless explicitly authorized.
- Secrets must never be committed to version control. If you discover a secret, report it privately and do not use it.
- Misconfigurations (e.g., overly permissive firewall rules, unintended public exposure, weak default credentials) are in scope.
- Third-party providers and modules are in scope insofar as our configuration of them creates risk.
- Supply chain risks (malicious modules/providers) are in scope for reporting.

## Key Management and Rotation

If a credential/key is suspected to be exposed, we will rotate and revoke it as part of the remediation. Please provide enough detail to identify the affected key or path without sharing the secret value.

## No Bug Bounty Program

We currently do not operate a public bug bounty program and do not offer monetary rewards for vulnerability reports. We appreciate and may publicly acknowledge contributions with your consent.

## Contact

GewoonAI B.V. (Trading name: Plainwise)

- Email: info@plainwise.com
- Phone: +31 (0)85 00 00 838
- Location: Zeist, The Netherlands

Thank you for helping us keep Plainwise secure.
