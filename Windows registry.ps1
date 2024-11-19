<#
    windows registry keys
        are the database for your OS

#>

# HKCU - Hash Key Current User
# HKLM - Hash key Local Machine

# shows the PowerShell Drives
Get-PSDrive

Get-PSDrive -PSProvider Registry

# GUI 
# Win + R regedit

# to access the reg key of HKCU
Get-ChildItem hkcu:\

# to create a registry key
New-Item -Path hkcu:\ -Name "Harida" -Force

New-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Value "2nd last torture of the day" -Force

# modify the reg key value
Set-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Value "PowerShell Zindabad" -Force

# remove the key
Remove-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Force

# remove the folder 
Remove-Item -Path HKCU:\Harida -Force
