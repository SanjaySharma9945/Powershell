#while loop 

$arr1 = @("a","b","c") 
$c = 0

cls
while ($c -lt $arr1.length){
    $arr1[$c]
    $c += 1
    sleep 1
}