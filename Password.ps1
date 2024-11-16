$passwd = Read-Host "Enter your password"
$passwd

$passwd2 = Get-Credential
$passwd2

$passwd3 = Get-Credential -UserName training\jeetu -Message "Type only ur PWD"
$passwd3