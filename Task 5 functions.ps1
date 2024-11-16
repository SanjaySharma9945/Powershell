<#
    task 5 -
        add 2 number and display the total of it 
        using function by passing integers as arguments 
#>

function Get-Add {
    param(
        [parameter(Mandatory = $true, HelpMessage= "Write your name")][int]$a,
        [parameter(Mandatory = $true, HelpMessage= "Write your name")][int]$b
    )

    $c = $a + $b
    Write-Host "Total of $a and $b is $c"
}

cls

#Get-Message -name "Sanjay"
#Get-Message -name "Sindhu"
#Get-Message -name "Shahid"
Get-Add