java -jar \
  D:\\maven\\repository\\org\\liquibase\\liquibase-core\\3.4.2\\liquibase-core-3.4.2.jar \
--driver=com.mysql.jdbc.Driver \
--classpath="D:\\maven\\repository\\mysql\\mysql-connector-java\\5.1.39\\mysql-connector-java-5.1.39.jar" \
--url=jdbc:mysql://database1.com:3306/schema \
--username=username \
--password=password \
diff \
--referenceUrl=jdbc:mysql://database2.com:3306/schema \
--referenceUsername=username \
--referencePassword=password