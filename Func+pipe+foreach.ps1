# functions + pipeline + foreach

function get-ping{
    param([string]$sites)

    if(Test-Connection $sites -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$sites" -ForegroundColor Green
    }else{
        Write-Host "$sites" -ForegroundColor Red
    }
}

cls
$websites = Get-Content ".\Desktop\sites.txt"
$websites | foreach {
    get-ping -sites $_           #$_ means one value at a time
}