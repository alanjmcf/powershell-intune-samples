﻿$user = 'admin.alan@lumaitcom.onmicrosoft.com'
#

function foreach_IntuneDCDump 
{
    param ($tenantInfo, $msolcred, $session, $status)
    #
    $tenant = $tenantInfo.'Microsoft ID'
    $dom = $tenantInfo.'Primary domain name'
    $onMsftPart = $dom.Substring(0, $dom.IndexOf('.'))
    #
    $exportPath = "C:\Users\AlanMcFarlane\repos2\tenantmgmt\t\$onMsftPart\intune"
    if (-not (Test-Path -PathType Container -Path $exportPath)) {
        mkdir $exportPath
    }
    #
    Write-Host "user: $user; tenant: $tenant"
    Write-Host "exportPath: >>$exportPath<<"
    #
    #--
    $global:authToken = Get-AuthToken -User $User -tenant $tenant
    #
    ExportDCPs
}

##    Invoke-ForEachClient -no_365_login -action foreach_IntuneDCDump