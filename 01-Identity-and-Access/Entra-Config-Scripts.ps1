Connect-MgGraph -Scopes "Policy.ReadWrite.Authorization"

# -------------------
# https://portal.azure.com/#view/Microsoft_AAD_IAM/CompanyRelationshipsMenuBlade/~/Settings
# -------------------

# checks the current settings
Get-MgPolicyAuthorizationPolicy | Format-List

Update-MgPolicyAuthorizationPolicy -Id "authorizationPolicy" -DefaultUserRolePermissions @{
    AllowedToCreateApps = $false
    AllowedToCreateSecurityGroups = $false
    AllowedToReadBitlockerKeysForOwnedDevice = $false
    AllowedToReadOtherUsers = $false
}

# Update-MgPolicyAuthorizationPolicy -Id "authorizationPolicy" -AllowUserConsentForApps "none" 

Update-MgPolicyAuthorizationPolicy -Id "authorizationPolicy" -AllowInvitesFrom "adminsAndGuestInviters"

# Disable self-service sign-up via email verification
# Update-MgPolicyAuthorizationPolicy -Id "authorizationPolicy" -AllowEmailVerifiedUsersToJoinOrganization $false

# Limit guest invitations to Admins and Guest Inviters only
Update-MgPolicyAuthorizationPolicy -Id "authorizationPolicy" -AllowInvitesFrom "adminsAndGuestInviters"


# only exclude user consent policy
$body = @{
    "permissionGrantPolicyIdsAssignedToDefaultUserRole" = @(
        "managePermissionGrantsForOwnedResource.{other-current-policies}" 
    )
}
Update-MgPolicyAuthorizationPolicy -BodyParameter $body

Get-MgPolicyAuthorizationPolicy | Format-List


