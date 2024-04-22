$App_Path="./app/docker-compose.yml"
$Monitoring_Path="./monitoring/docker-compose.yml"

Write-Host "`n-------------------------";
Write-Host "Deploying node.js app";
Write-Host "-------------------------`n";
docker compose -f $App_Path down --remove-orphans --rmi all

Write-Host "`n-------------------------";
Write-Host "Deploying monitoring tools";
Write-Host "-------------------------`n";
docker compose -f $Monitoring_Path down --remove-orphans --rmi all
Remove-Item -Recurse -Force ./monitoring -Include *_data

