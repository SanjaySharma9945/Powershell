<# 
    Task
    -----
    Ask user to input a service name (say BITS) and check it the service is running or stopped.

    if the service is running, then ask user to 
        1. stop the service
        2. exit (no changes)
    if the service is stopped, then ask user to 
        1. start the service.
        2. exit (no changes)
#>

cls
$serv = Read-Host "Enter the service"

$service = Get-Service -Name $serv -ErrorAction SilentlyContinue

if ($service.Status -eq "Running"){
    Write-Host "$serv is running" -ForegroundColor Green
    $choice = Read-Host "Choose 1. stop the service
                        2. Exit"
    switch($choice){
    1 {Stop-Service -Name $serv} 
    2 {break}
    }
    Write-Host $service.Name "is Stopped" -ForegroundColor Red
}
else{
    Write-Host "$serv is Stopped" -ForegroundColor Red
    $choice = Read-Host "Choose 1. start the service
                        2. Exit"
    switch($choice){
    1 {Start-Service -Name $serv}
    2 { break }
    }
    Write-Host $service.Name "is started" -ForegroundColor Green 
}
