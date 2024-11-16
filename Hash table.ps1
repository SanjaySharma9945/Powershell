<#
    Hashtable = key-value pair
#>
cls
$ht1 = @{}
$ht1.GetType()

#unordered hashtable
$ht2 = @{"Name" = "Sanjay"; "Client" = "LTIMindtree"; "Location" = "BBRS"}
$ht2

#ordered hashtable
$ht3 = [ordered]@{"Name" = "Sanjay"; "Client" = "LTIMindtree"; "Location" = "BBRS"}
$ht3

#adding key-value pair
$ht3.Add("Classroom","Harida")

#modify key-value pair
$ht3.Remove("Client")
$ht3

#other operations
$ht3.Keys
$ht3.values
$ht3["Name"]