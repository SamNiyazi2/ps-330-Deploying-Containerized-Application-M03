
# 08/15/2021 11:41 am - SSN

$ErrorActionPreference = "stop"

function w1( $msg ) {

    write-host ""
    write-host $msg
    write-host ""
    
}


if ( ( docker ps -a -f name=wb_ | measure).count -eq 0 ) {
    write-host "Re-deploy stack"

    docker stack deploy -c docker-compose.yml wb
    
}
else {
    write-host "Stack was deployed."
}



w1 -msg "docker stack ls: "

docker stack ls

 


w1 -msg "docker stack ps wb: "

docker stack ps wb
 
 