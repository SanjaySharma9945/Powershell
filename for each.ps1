# for each loop
cls
$arr1 = @(1..20)

foreach( $a in $arr1){
    $a
    #sleep 1
}

# example 2
cls
$websites = @("google.com", "ltimindtree.com","youtube.com","ultima.com")
foreach($w in $websites){
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$w is available" -ForegroundColor Green
    }else{
        Write-Host "$w is not available" -ForegroundColor Red
    }
}

# task  - access all the site names from a text file and ping
cls
# notepad.exe sites.txt
$websites = Get-Content ".\sites.txt"
foreach($w in $websites){
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$w is available" -ForegroundColor Green
    }else{
        Write-Host "$w is not available" -ForegroundColor Red
    }
}

#task -list all the running services name in green and stopped in red color

cls
# notepad.exe sites.txt
$services = Get-Service
foreach($service in $services){
    if($service.Status -eq "running"){
        Write-Host $service.Name "is running" -ForegroundColor Green
    }
    else{
        Write-Host $service.Name "is stopped" -ForegroundColor Red
    }
}

cls
foreach($service in Get-Service){
    if($service.Status -eq "running"){
        Write-Host $service -ForegroundColor Green
    }
    else{
        Write-Host $service -ForegroundColor Red
    }
}