java -jar \
  D:\\maven\\repository\\org\\liquibase\\liquibase-core\\3.4.2\\liquibase-core-3.4.2.jar \
  --driver=com.mysql.jdbc.Driver \
 --classpath="D:\\maven\\repository\\mysql\\mysql-connector-java\\5.1.39\\mysql-connector-java-5.1.39.jar"  \
 --changeLogFile=src/main/liquibase/changelog/db.changelog.xml \
 --url="jdbc:mysql://192.168.10.10:3306/test?useUnicode=true&&characterEncoding=utf-8" \
 --username=test \
 --password=test generateChangeLog