Following https://docs.confluent.io/4.0.0/installation/docker/docs/tutorials/connect-avro-jdbc.html

`!!!` The mysql docker version is not fixed, resulting in inconsistency between the downloaded jdbc driver and the mysql server.
In this code, we have changed the downloaded jdbc driver and fixed the mysql docker version to 8.0.12

Launch zookeeper docker: 
```
docker-compose up -d zookeeper
```

Wait for zookeeper to be up, then launch kafka docker: 
```
docker-compose up -d kafka
```

Wait for kafka to be up, then launch the schema registry docker: 
```
docker-compose up -d schemaregistry
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

Launch kafka connect docker: 
```
docker-compose up -d kafkaconnect
```

Launch mysql docker: 
```
docker-compose up -d mysql
```

Wait for it to finish booting, then create the connect_test database and fill it with sample data:
```
./fill_db.sh
```

Register the source:
```
./register-jdbc-source.sh
```