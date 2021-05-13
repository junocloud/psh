#Path to folder or file
$acl = Get-Acl "B:\data\backup\Comercial\Dados\PEDIDOS\" 

#Permission Options
$InheritanceFlag = [System.Security.AccessControl.InheritanceFlags]::ContainerInherit -bor [System.Security.AccessControl.InheritanceFlags]::ObjectInherit
$PropagationFlag = [System.Security.AccessControl.PropagationFlags]::None
$objType = [System.Security.AccessControl.AccessControlType]::Allow

#User and permissions - Write - Modify - ReadandExecute
$permission = "domain\epatricia","Modify", $InheritanceFlag, $PropagationFlag, $objType
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule $permission

$acl.SetAccessRule($AccessRule)

$acl | Set-Acl "B:\data\backup\Comercial\Dados\PEDIDOS\"


#Path to folder or file to check results
Get-Acl "B:\data\backup\Comercial\Dados\PEDIDOS\Planilha.xls" | Fl