Scripts_Path=$1
App_Path="${Scripts_Path}/app/docker-compose.yml"
Monitoring_Path="${Scripts_Path}/monitoring/docker-compose.yml"
datafilename_1="prometheus_data"
datafilename_2="grafana_data"

if [ -d ${datafilename_1} || -d ${datafilename_2} ]; then
    rm -rf ${Scripts_Path}/monitoring/*_data
fi

mkdir -p "${Scripts_Path}/monitoring/prometheus_data"
mkdir -p "${Scripts_Path}/monitoring/grafana_data"

docker compose -f $App_Path up --build --detach 
docker compose -f $Monitoring_Path up --build --detach 