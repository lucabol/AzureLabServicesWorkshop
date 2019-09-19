[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Remove-AzResourceGroup -Name WorkshopRG -Force
