  # switch statement

cls
$ans = Read-Host "
    Select option from the following:
    1. Check IP address
    2. ping Google.com
    3. List hostname
    4. Display today's date & time
    5. exit
"

switch ( $ans ){
#    1 { ipconfig }
    1 { (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "DHCP"}).IPAddress }


    2 { $serv = "google.com"
    if(Test-Connection $serv -Count 1 -ErrorAction SilentlyContinue){
    sleep 2
    Write-Host "Connection establishing..." -ForegroundColor Blue
    sleep 2
    Write-Host "$serv is pinging" -ForegroundColor Green
    }else
    {
        Write-Host "$serv is not pinging" -ForegroundColor Red
    }
     }
    
    
    3 { HOSTNAME.EXE }
    4 { Get-Date }
    5 { break } 
    default { Write-Warning "Invalid selection!!!" }
}