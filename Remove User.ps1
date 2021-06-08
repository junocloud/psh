$acl = Get-Acl "B:\data\backup agir\extrusora\"

$usersid = New-Object System.Security.Principal.Ntaccount ("users")

$acl.PurgeAccessRules($usersid)

$acl | Set-Acl "B:\data\backup agir\extrusora\"


#If you put users in usersid ALL users will be removed, use domain\user