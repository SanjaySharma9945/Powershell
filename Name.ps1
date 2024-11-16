cls 
Write-Host "Hello Batch 37.1"

$name = Read-Host "Enter username"

write-Host "Welcome Mr." -NoNewline
Write-Host $name -ForegroundColor Blue -BackgroundColor Cyan