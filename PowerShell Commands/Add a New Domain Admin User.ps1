# First Generate the Password:

$PASSWORD= ConvertTo-SecureString –AsPlainText -Force -String example123@

# Create New User: (Make Sure to replace the Name and Password with your correct name)

New-ADUser -Name "Example " -Description "Example Domain User" -Enabled $true -AccountPassword $PASSWORD

# Verify the User is created:

Get-ADUser -filter * | ft Name, Enabled

# Add to Domain Admins Group:

Add-ADGroupMember -Identity "Domain Admins" -Members Example

#Verify with below command

Get-ADGroupMember "Domain Admins" | ft Name