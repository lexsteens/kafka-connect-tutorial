mkdir jars
curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.12.tar.gz" | tar -xzf - -C ./jars --strip-components=1 mysql-connector-java-8.0.12/mysql-connector-java-8.0.12.jar
#curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz" | tar -xzf - -C ./jars --strip-components=1 mysql-connector-java-5.1.39/mysql-connector-java-5.1.39-bin.jar
