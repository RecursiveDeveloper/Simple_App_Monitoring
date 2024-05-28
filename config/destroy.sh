Scripts_Path="/opt/config"
App_Path="${Scripts_Path}/app/docker-compose.yml"
Monitoring_Path="${Scripts_Path}/monitoring/docker-compose.yml"

echo "\n-------------------------";
echo "Deploying node.js app";
echo "-------------------------\n";
docker compose -f $App_Path down --remove-orphans --rmi all

echo "\n-------------------------";
echo "Deploying monitoring tools";
echo "-------------------------\n";
docker compose -f $Monitoring_Path down --remove-orphans --rmi all
rm -rf ${Scripts_Path}/monitoring/*_data
