
# 08/16/2021 04:27 am - SSN 

docker ps -a -f name=wb_ status=exited -q | % { docker rm $_ }

docker ps -a -f name=wb_ 
