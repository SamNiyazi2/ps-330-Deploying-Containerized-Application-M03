
# 08/15/2021 11:51 am - SSN 

docker ps -a -f name=wb_stock-api 

Write-Host ""
write-host "At test time, both commands failed." -ForegroundColor Yellow

write-host 'Note: OCI runtime exec failed: exec failed: container_linux.go:380: starting container process caused: exec: "kill": executable file not found in $PATH: unknown' -ForegroundColor blue
Write-Host ""

docker container ls -f name=wb_prod -q | % { docker exec -it  $_ kill 1 }
docker container ls -f name=wb_prod -q | % { docker container exec  $_ kill 1 }
