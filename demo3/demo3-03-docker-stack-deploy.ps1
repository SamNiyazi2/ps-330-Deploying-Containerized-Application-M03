
# 08/16/2021 03:07 am - SSN 

param ( $dockerFileName )

$ErrorActionPreference = "stop"

$includeFiles = @('*.yml')

function displayAvailaleOptions { 

    Write-Host " "
    write-host "Available options: "

    Get-ChildItem -path ".\*" -Include $includeFiles
    Write-Host " "

}

write-host " " 

if ( [System.String]::IsNullOrWhiteSpace( $dockerFileName )) {

    write-host "Provide docker file name." -ForegroundColor Yellow
    
    displayAvailaleOptions

    return
}

$fileObj = get-item -Path $dockerFileName -ErrorAction "silentlycontinue"



if (!$fileObj.Exists) {

    write-host "[$dockerFileName] does not exist" -ForegroundColor Red
    displayAvailaleOptions
    return 
}


docker stack deploy -c $dockerFileName wb 

explorer http://localhost:8080

