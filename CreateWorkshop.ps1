[CmdletBinding()]
param()

Import-Module .\Az.LabServices.psm1 -Force

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$rgName     = 'WorkshopRG'
$rgLocation = 'West Europe'
$labName    = 'Advancing Differenciation'
$laName     = 'Workshops'
$imgName    = 'Windows 10 Pro'
$maxUsers   = 2
$usageQuota = 30
$usageAMode = 'Restricted'
$shPsswd    = $false
$size       = 'Small'
$title      = 'Advancing Differentiation Workshop'
$descr      = 'Bringing it to the 21st Century'
$userName   = 'test0000'
$password   = 'Test00000000'
$linuxRdp   = $true

Start-Transcript

if(-not (Get-AzResourceGroup -ResourceGroupName $rgName -EA SilentlyContinue)) {
    New-AzResourceGroup -ResourceGroupName $rgName -Location $rgLocation | Out-null
    Write-Host "$rgname resource group didn't exist. Created it."
}

$la  = New-AzLabAccount -ResourceGroupName $rgName -LabAccountName $laName
Write-Host "$laName lab account created or found."

$lab = $la | Get-AzLab -LabName $labName

if($lab) {
    $lab = $la `
        | New-AzLab -LabName $LabName -MaxUsers $maxUsers -UsageQuotaInHours $usageQuota -UserAccessMode $usageAMode -SharedPasswordEnabled:$shPsswd `
        | Publish-AzLab
    Write-Host "$LabName lab already exist. Republished."
} else {
    $img = $la | Get-AzLabAccountGalleryImage | Where-Object {$_.name -like "$imgName*"}
    if(-not $img) {Write-Error "$imgName pattern doesn't match any image."}
    $img = $img | Select-Object -first 1
    Write-Host "Image $imgName found."
    
    $lab = $la `
        | New-AzLab -LabName $LabName -MaxUsers $maxUsers -UsageQuotaInHours $usageQuota -UserAccessMode $usageAMode -SharedPasswordEnabled:$shPsswd `
        | New-AzLabTemplateVM -Image $img -Size $size -Title $title -Description $descr -UserName $userName -Password $password -LinuxRdpEnabled:$linuxRdp `
        | Publish-AzLab
    Write-Host "$LabName lab doesn't exist. Created it."
}

Stop-Transcript
Remove-Module Az.LabServices -Force