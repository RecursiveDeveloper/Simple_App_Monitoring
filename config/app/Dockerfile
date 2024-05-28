FROM node:lts-alpine3.19

WORKDIR /opt/nodejs-grafana-prometheus/

COPY index.js .

RUN npm init -y && npm install express prom-client

ENTRYPOINT [ "node", "index.js" ]
