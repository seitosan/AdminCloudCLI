clear-host
write-host "###################################################"
write-host "Container docker d'administration de cloud "
write-host "###################################################"
Write-host "[INFO] - liste des modules disponible : "
Get-module -ListAvailable | select Name,Version |ft 
Write-host "[INFO] - Pour importer : Import-module moduleName"
write-host "[INFO] - Pour charger tous les modules : "
$validation = read-host '[INFO] - Chargement de tous les modules ? [Y/N]'
if ($validation -eq  'Y')
{
    get-module -ListAvailable | ForEach-Object { write-host "[INFO] - Import $_.Name " ; Import-module $_.Name } 
}