<#
    write a function that accepts username and prints "Hello <username>"
    note -NO use of Read-host command, no use of file
#>

function Get-Message {
    param(
        [parameter(Mandatory = $true, HelpMessage= "Write your name")][string]$name
    )

    Write-Host "Hello $name"
}

cls

#Get-Message -name "Sanjay"
#Get-Message -name "Sindhu"
#Get-Message -name "Shahid"
Get-Message