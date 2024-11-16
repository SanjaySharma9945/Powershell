<#
Task - ask user for a website name and check if its pinging or not 
#>

cls
$serv = Read-Host "Enter the website name"

if(Test-Connection $serv -Count 1 -ErrorAction SilentlyContinue){
    sleep 2
    Write-Host "Connection establishing..." -ForegroundColor Blue
    sleep 2
    Write-Host "$serv is pinging" -ForegroundColor Green
}else
{
    Write-Host "$serv is not pinging" -ForegroundColor Red
}
