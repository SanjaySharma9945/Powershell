<#
Task 3
    Create below menu bar using PS Script
    Select any option from the following:
    1. Open Outlook
    2. Open Chrome
    3. Open Notepad
    4. exit
    
Task 4
    write PS script to display below values
    Every time you open powershell (Not ISE)
    1. Display Hello <username>
    2. Your IP Address is <ipaddress>
    3. Your internet is <Active/Inactive> 
        
      
#>

cls
$ans = Read-Host "
    Select any option from the following:
    1. Open Outlook
    2. Open Chrome
    3. Open Notepad
    4. exit
"

switch ( $ans ){
    1 { Start Outlook }
    2 { start Chrome }
    3 { start Notepad }
    4 { break }
}

cls
Write-host "Hello Sanjay"
Write-host "Your IP Address is :" (Get-NetIPAddress | Where-Object { $_.PrefixOrigin -eq "DHCP"}).IPAddress
if(Test-Connection -ComputerName microsoft.com -Count 1 -Quiet) 
    {"Internet status: Active" }
    else 
    {"Internet status: Inactive"}