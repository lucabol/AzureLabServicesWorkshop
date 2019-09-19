[CmdletBinding()]
param()

Import-Module .\Az.LabServices.psm1 -Force

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if(get-azlabaccount -ResourceGroupName WorkshopRG -LabAccountName Workshops | Get-AzLab) {
    Write-Host "Everything looks fine!"
} else {
    Write-Error "Error: cannot find the lab."
}

Remove-Module Az.LabServices -Force