cls
# $svc = Get-Service -Name BITS

$nam = Read-Host "Enter service name to check status"

$svc = Get-Service -Name $nam

# $svc.Name

# $svc.Status

write-Host "$($svc.name) is $($svc.Status)"