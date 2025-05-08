# Azure AD Identity Protection Configuration

## Overview

Azure AD Identity Protection is a security feature that uses machine learning to detect potential vulnerabilities and risky behaviors related to user identities. As part of this Zero Trust architecture, Identity Protection is used to detect risky sign-ins, compromised accounts, and enforce remediation actions via Conditional Access policies.

---

## Configured Risk Policies

### Sign-in Risk Policy
- **Policy Name**: Require multifactor authentication for risky sign-ins
- **Target Users**: All users (excluding break-glass account)
- **Risk Level**: High
- **Access Control**: Block access
- **Status**: Enabled

### User Risk Policy
- **Policy Name**: Require password change for high-risk users
- **Target Users**: All users (excluding break-glass account)
- **Risk Level**: Medium and High
- **Access Control**: Require password change
- **Status**: Enabled

### Excluded Accounts
- `BreakGlass@Pasmithbmgmail.onmicrosoft.com` (excluded from all risk policies)

---

## Risk Detection Types Monitored

The following risk events are used by Azure AD Identity Protection to calculate sign-in and user risk:
- Atypical travel
- Anonymous IP address usage (e.g., TOR)
- Unfamiliar sign-in properties
- Malware-linked IP addresses
- Impossible travel
- Password spray attempts
- Azure AD threat intelligence signals

---

## Testing and Validation

- Used **TOR browser** and foreign VPN to simulate high-risk sign-in
- Risk detection appeared in **Entra Admin Center > Identity Protection > Risky sign-ins**
- Verified automatic block and remediation using configured policies
- Logged outcome and confirmed Conditional Access enforcement triggered correctly

---

## Recommendations

- Start with policies in **report-only mode** to measure impact
- Review **Risky Users** and **Risk Detections** weekly
- Combine Identity Protection with **MFA**, **PIM**, and **Conditional Access**
- Set up **alerts** or integrate with **Microsoft Sentinel**

---

## References
- [Identity Protection Overview](https://learn.microsoft.com/en-us/azure/active-directory/identity-protection/overview-identity-protection)
- [Risk-based access policies](https://learn.microsoft.com/en-us/entra/id-protection/concept-identity-protection-policies)