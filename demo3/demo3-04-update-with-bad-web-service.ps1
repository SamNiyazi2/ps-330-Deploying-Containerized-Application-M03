
# 08/16/2021 04:10 am - SSN 

write-host " "

docker ps -a -f name=wb_web 

write-host " "
write-host " "

docker service update --image psdockerrun/web:v3 wb_web 


write-host " "
write-host " "

docker ps -a -f name=wb_web -f status=exited

