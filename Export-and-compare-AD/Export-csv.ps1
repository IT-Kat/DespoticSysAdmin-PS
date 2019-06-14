#Requires -RunAsAdministrator

Import-Module ActiveDirectory

$SaveLocation = New-Object -TypeName System.Windows.Forms.SaveFileDialog
$SaveLocation.ShowDialog()

Get-ADUser -Filter 'enabled -eq $true' -Properties City, CN, Company, Department, Description, DisplayName, DistinguishedName, EmailAddress, GivenName, HomeDirectory, HomedirRequired, HomeDrive, Initials, Manager, MobilePhone, Name, Office, OfficePhone, Organization, PostalCode, SamAccountName, State, StreetAddress, Surname, Title, UserPrincipalName | select City, CN, Company, Department, Description, DisplayName, DistinguishedName, EmailAddress, GivenName, HomeDirectory, HomedirRequired, HomeDrive, Initials, Manager, MobilePhone, Name, Office, OfficePhone, Organization, PostalCode, SamAccountName, State, StreetAddress, Surname, Title, UserPrincipalName | Export-Csv -Path $SaveLocation.FileName -NoTypeInformation

Write-Host -ForegroundColor Green "Export complete, saved as:"
Write-Host -ForegroundColor Green $SaveLocation.FileName
