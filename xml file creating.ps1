# XML 
# Get-Service -DisplayName A* | Select-Object name, DisplayName, status, StartType | ConvertTo-Xml service.xml | Out-File services.xml

# XML 
# Get-Service -DisplayName A* | Select-Object name, DisplayName, status, StartType | Export-Clixml services.xml

# calling the data
[xml]$xmldata = Get-Content "C:\Users\10821654\OneDrive - LTIMindtree\Desktop\Books.xml"
$xmldata.GetType()            # getting the data type of the variable

$xmldata.catalog.book | Format-Table
$xmldata.catalog.book | Select-Object id, author
$xmldata.catalog.book | Select-Object id, author, price
$xmldata.catalog.book | Select-Object id, author, title, price, genre | Format-Table

# list book title with genre name only 
$xmldata.catalog.book | Where-Object { $_.genre -eq "Horror" } | Select-Object id, title

# list book id, price & title using genre using match 
$xmldata.catalog.book | Where-Object { $_.genre -match "science" } | Select-Object id, title

# list book id, price & title using genre using like 
$xmldata.catalog.book | Where-Object { $_.title -like "xml*" } | Select-Object id, title, price  
# if the complete name is not known then we will have to use *

^ --> Starting position
$ --> ending position

$xmldata.catalog.book | Where-Object { ($_.genre -match "science") -and ($_.genre -match "hor") } | `
Select-Object id, title, price, genre
