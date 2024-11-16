#switch statement

function Get-MyIPAddr{
    (Get-NetIPAddress)
}
function Get-PingAddr{
    Test-Connection google.com -Count 1 -ea SilentlyContinue
}

function Get-Hostname{
    HOSTNAME.EXE
}

function Get-MyDate{
    Get-Date -Format "dddd MM/dd/yyyy HH:mm"
}

cls
$ans = Read-Host "
    Select option from the following:
    1. Check IP address
    2. ping Google.com
    3. List hostname
    4. Display today's date & time
    5. exit
"

switch ($ans){
    1 {Get-MyIPAddr}
    2 {Get-PingAddr}
    3 {Get-Hostname}
    4 {Get-MyDate}
    5 {break}
    default {Write-Warning "Invalid selection!!!"}
}