Following https://docs.confluent.io/4.0.0/installation/docker/docs/tutorials/connect-avro-jdbc.html

Launch zookeeper docker: 

```
docker-compose up -d zookeeper
```

Wait for zookeeper to be up, then launch kafka docker: 

```
docker-compose up -d kafka
```

Wait for kafka to be up, then launch the schemaregistry docker: 

```
docker-compose up -d mysql
```

Create the necessary topics for kafka connect:

```
./create-topics.sh quickstart-avro-offsets
./create-topics.sh quickstart-avro-config
./create-topics.sh quickstart-avro-status
```

Check that the topics have been created:

```
./list-topics.sh
```




Launch mysql docker: 

```
docker-compose up -d mysql
```

Wait for it to finish booting, then create the connect_test database and fill it with sample data:
```
./fill_db.sh
```