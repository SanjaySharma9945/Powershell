cls
$servicename = Read-Host "Enter service name"
$svc = Get-Service -Name $servicename
if($svc.status -eq "running"){
    Write-Host "($svc.name) is $($svc.status)" -Foregroundcolor Green
    $ans = Read-Host "Do you want to stop the service (y | n)"
    switch ($ans){
      y{
        Stop-Service -Name $servicename
        Write-Host "current status: " (Get-Service -Name $servicename).Status
        }
        n{ Write-Host "Quitting console..."
            sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}else{
     Write-Host "$($svc.name) is $($svc.Status)" -ForegroundColor Red
     $ans = Read-Host "Do you want to START the service (y | n)"
     switch ($ans){
      y{
         Start-Service -Name $servicename
         Write-Host "Curent Status: " (Get-Service -Name $servicename).Status
        }
        n{ Write-Host "Quitting console..."
             sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}