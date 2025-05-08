Microsoft-Azure-Project/
├── 01-Identity-and-Access/
│   ├── CA-Policies/
│   │   ├── Block access by location.json
│   │   └── Block access for unknown or unsupported device platform.json
│   │   └── Block access to Office365 apps for users with insider risk.json
│   │   └── Block legacy authentication.json
│   │   └── Require multifactor authentication for all users.json
│   │   └── Require multifactor authentication for Azure management.json
│   │   └── Require multifactor authentication for Microsoft admin portals.json
│   │   └── Require multifactor authentication for risky sign-ins.json
│   │   └── Require password change for high-risk users.json
│   │   └── Require TAP to register or join a device.json
│   │   └── Securing security info registration.json
│   ├── Identity-Protection.md
│   ├── Entra-Config-Scripts.ps1
│   └── identity-architecture.drawio
│
├── 02-Networking/
│   ├── hub-vnet.bicep
│   ├── spoke1-vnet.bicep
│   ├── spoke2-vnet.bicep
│   ├── peering.bicep
│   ├── firewall-rules.bicep
│   ├── NSG-Rules.md
│   ├── Private-Endpoints.md
│   ├── Route-Tables.md
│   └── network-diagram.drawio
│
├── 03-Endpoint-Security/
│   ├── Defender-For-Endpoint.md
│   ├── Onboarding-Simulated-Clients.ps1
│   └── EDR-Integration-Notes.md
│
├── 04-Application-Security/
│   ├── App-Registration.md
│   ├── FrontDoor-WAF.md
│   ├── AppProxy-Config.md
│   └── OAuth2-Flows.md
│
├── 05-Data-Security/
│   ├── KeyVault-BYOK.md
│   ├── AIP-Labels.md
│   ├── Purview-Setup.md
│   └── Storage-Security-Notes.md
│
├── 06-Monitoring-and-Response/
│   ├── log-analytics-setup.md
│   ├── diagnostic-settings.md
│   ├── nsg-flowlog-setup.md
│   ├── traffic-analytics-notes.md
│   ├── workbooks/
│   │   └── firewall-deny-monitor.workbook.json
│   ├── kql-queries/
│   │   ├── firewall-deny-summary.kql
│   │   ├── explorer-summary.kql
│   │   ├── top-categories.kql
│   │   └── resource-volume.kql
│   └── alert-rules/
│       └── deny-alert-rule.json
│
├── 07-Policy-and-Governance/
│   ├── Azure-Policy/
│   │   ├── enforce-tagging.json
│   │   ├── allowed-locations.json
│   │   └── require-private-link.json
│   ├── Blueprints.md
│   ├── Regulatory-Compliance.md
│   └── Management-Groups.md
│
├── 08-Automation-and-IaC/
│   ├── terraform/
│   │   ├── main.tf
│   │   └── modules/
│   ├── bicep/
│   │   ├── main.bicep
│   │   └── modules/
│   └── github-actions/
│       └── deploy.yml
│
├── 09-Diagrams-and-Docs/
│   ├── Zero-Trust-Architecture.drawio
│   ├── identity-workflow.png
│   ├── README.md
│   ├── Executive-Summary.pdf
│   └── lab-instructions.md
