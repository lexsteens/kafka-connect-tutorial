docker-compose down
docker-compose up -d mysql
docker-compose up -d zookeeper
date
sleep 10
date
docker-compose up -d kafka
date
sleep 10
date
docker-compose up -d schemaregistry
./create-topics.sh quickstart-avro-offsets
./create-topics.sh quickstart-avro-config
./create-topics.sh quickstart-avro-status
./list-topics.sh
date
sleep 10
date
docker-compose up -d kafkaconnect
date
sleep 60
date
./fill_db.sh
./register-jdbc-source.sh
date
sleep 5
date
curl http://localhost:28083/connectors | jq
res=$(curl http://localhost:28083/connectors/quickstart-jdbc-source/status)
echo $res | jq
echo $res | jq ".tasks[0].state"
trace=$(echo $res | jq ".tasks[0].trace")
printf "$trace"

