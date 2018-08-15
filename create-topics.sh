docker-compose exec kafka kafka-topics --create --topic $1 --partitions 1 --replication-factor 1 --if-not-exists --zookeeper localhost:32181
