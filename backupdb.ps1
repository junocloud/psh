#Run cmd inside powershell
cmd.exe /c C:\users\azureuser\Desktop\backup.bat


#What Folders you want to backup
$BackupDirs="C:\Users\azureuser\documents\bkp","z:\bkp" 


# Delete all Files in $Path older than 30 day(s)
$Path = $BackupDirs
$Daysback = "-1"
 

#STOP-no changes here
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item


#Move Files to Destination
Copy-Item -Path "c:\users\azureuser\documents\bkp\*" -Destination "Z:\bkp" -Recurse
