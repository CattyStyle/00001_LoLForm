$scriptpath = $script:myInvocation.MyCommand.path

$dir = Split-Path $scriptpath


. $dir\riotAPI.ps1
. $dir\createForm.ps1

$Informations = Get-ActiveGames_Champions_Enemy_informations


Invoke-Forms($Informations)