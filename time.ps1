# Digital time

function get-time{    
    Get-Date
}

for($i = 0; $i -ge 0 ; $i++) {
    cls
    get-time
    sleep 1
}

# simple

<#function get-clock {

    cls

    Get-Date

    sleep 1

    get-clock

}

cls
get-clock
#>