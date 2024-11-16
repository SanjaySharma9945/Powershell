<#
    conditional statements
        -if statement
        -if-else statement 
        -Nested if-else statement
        -Switch statement
#>

# if statement
cls
$a = 10
if($a -eq 10){
    Write-Host "$a is equal" -ForegroundColor Green
}

#if-else statement
cls
$a = 10
if($a -eq 100){
    Write-Host "$a is equal" -ForegroundColor Green
}
else{
    Write-Host "$a is NOT equal" -ForegroundColor Red
}