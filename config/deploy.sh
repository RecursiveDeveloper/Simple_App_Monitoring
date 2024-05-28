Scripts_Path="/opt/config"
App_Path="${Scripts_Path}/app/docker-compose.yml"
Monitoring_Path="${Scripts_Path}/monitoring/docker-compose.yml"

echo -e "\n-------------------------";
echo "Creating prerequisites";
echo "-------------------------\n";
mkdir -p "${Scripts_Path}/monitoring/prometheus_data"
mkdir -p "${Scripts_Path}/monitoring/grafana_data"

echo -e "\n-------------------------";
echo "Deploying node.js app";
echo "-------------------------\n";
docker compose -f $App_Path up --build --detach 

echo "\n-------------------------";
echo "Deploying monitoring tools";
echo "-------------------------\n";
docker compose -f $Monitoring_Path up --build --detach 
