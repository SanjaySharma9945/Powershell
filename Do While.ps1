# Do-while loop 

cls
$arr1 = @("item1","item2","item3") 
$counter = 0;

do
{
    $arr1[$counter]
    $counter += 1
    sleep 1
}while ($counter -lt $arr1.length)