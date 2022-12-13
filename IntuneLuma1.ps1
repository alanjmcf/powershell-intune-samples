$user = 'admin.alan@lumaitcom.onmicrosoft.com'
$onMsftPart = $null
#
#$tenant = 'annexecommunities.org.uk'
$tenant = '9bb6d34f-737b-4616-b809-c4ff85b21da3'
$onMsftPart = 'bridginggap'
#
if (-not $onMsftPart) {
    $onMsftPart = $tenant.Substring(0, $tenant.IndexOf('.'))
}
$exportPath = "C:\Users\AlanMcFarlane\repos2\tenantmgmt\t\$onMsftPart\intune"
mkdir $exportPath
#
"user: $user; tenant: $tenant"
"exportPath: >>$exportPath<<"
