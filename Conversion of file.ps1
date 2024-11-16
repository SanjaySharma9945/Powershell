﻿# conversion

# listing all the commands for conversion
Get-Command -Verb convertto

# display all service full name that start with 'a'
Get-Service -DisplayName a* | `
Select-Object DisplayName, Status, StartType | Out-GridView

# converting to HTML page
Get-Service -DisplayName a* | `
Select-Object DisplayName, Status, StartType |`
ConvertTo-Html | `
Out-File a-services.html

.\a-services.html   #opens web browser

# converting to JSON
Get-Service -DisplayName a* | `
Select-Object DisplayName, Status, StartType |`
ConvertTo-Json | `
Out-File a-services.json

.\a-services.json   #opens JSON app

# converting to JSON
Get-Service -DisplayName a* | `
Select-Object DisplayName, Status, StartType |`
ConvertTo-Csv | `
Out-File a-services.Csv

.\a-services.Csv   #opens Excel app