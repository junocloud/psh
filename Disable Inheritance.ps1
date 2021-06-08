$folder = 'Path'
$acl = Get-ACL -Path $folder
$acl.SetAccessRuleProtection($True, $True)
Set-Acl -Path $folder -AclObject $acl

#---------------------------------------#
#1 Assigned a folder path to a variable called $folder
#2 Read the rights of the folder and saved in the variable $acl
#3 Remove the inheritance but copy the ACEs
#4 Set the ACL to the folder so its done.

#---------------------------------------#
#So that is the $True,  $True part. 
#Well The first part says is this folder protected or not (opposite of inherited). 
#The second is should the current ace be copied. 
#So if you set the first to $False inheritance will be restored.