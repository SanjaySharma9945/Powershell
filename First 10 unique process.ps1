# Task - list top 10 unique processes (Name, CPU(in Descending order --> sort-object))
# with high CPU utilization/

Get-Process | `
Sort-Object CPU -Descending | `
Select-Object Name, `
@{ l = "CPU(in%)" ; e={[math]::Round(($_.CPU),2)} } `
-First "10" -Unique  