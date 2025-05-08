Azure AD Identity Protection helps detect risky sign-ins and compromised identities using signals from Microsoft’s security graph. It enables you to configure risk-based Conditional Access policies and automated response.

#------------------------------------------
# Conditional Access policies
#------------------------------------------

Sign-in Risk Policy (https://learn.microsoft.com/en-us/entra/id-protection/howto-identity-protection-configure-risk-policies#sign-in-risk-policy-in-conditional-access)
Policy Name: Require multifactor authentication for risky sign-ins
Target Users: All users
Risk Level: High
Action: Block access

User Risk Policy (https://learn.microsoft.com/en-us/entra/id-protection/howto-identity-protection-configure-risk-policies#user-risk-policy-in-conditional-access)
Policy Name: Require password change for high-risk users
Target Users: Admins and Users
Risk Level: Medium and above
Action: Require Password Change and MFA

#------------------------------------------
# Risk Detection
#------------------------------------------

Types (https://learn.microsoft.com/en-us/entra/id-protection/concept-identity-protection-risks#risk-detections-mapped-to-riskeventtype)
Atypical travel
Anonymous IP addresses (e.g., TOR)
Malware-linked IP addresses
Password spray attacks
Impossible travel