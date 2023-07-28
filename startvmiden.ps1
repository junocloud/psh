Connect-AzAccount -Identity
$ResourceGroupName = 'ansumantest' 
$AzureVMName = 'testVM'   

"Starting Azure VM..."
Stop-AzVM -Name $AzureVMName -ResourceGroupName $ResourceGroupName