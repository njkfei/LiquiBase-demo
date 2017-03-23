# LiquiBase-demo
liquibase　mysql版本管理工具。
liquibase有如下功能。

* mysql版本管理
* mysql表结构比较
* 数据表生成等

# 使用方法
### 引入maven插件
```
    <build>
        <plugins>
            <plugin>
                <groupId>org.liquibase</groupId>
                <artifactId>liquibase-maven-plugin</artifactId>
                <version>3.4.2</version>
                <configuration>
                    <driver>com.mysql.jdbc.Driver</driver>
                    <url>jdbc:mysql://192.168.10.10:3306/test</url>
                    <username>test</username>
                    <password>test</password>
                    <outputChangeLogFile>src/main/dbschema/master.xml</outputChangeLogFile>
                    <changeLogFile>src/main/dbschema/master.xml</changeLogFile>
                </configuration>
                <executions>
                    <execution>
                        <phase>process-resources</phase>
                        <goals>
                            <goal>update</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>
```
这还不够，需要导入相当的java包

```
 <dependencies>
        <dependency>
            <groupId>org.liquibase</groupId>
            <artifactId>liquibase-core</artifactId>
            <version>3.0.7</version>
        </dependency>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>5.1.39</version>
        </dependency>
    </dependencies>
```
把上面的包引用后，基本上是可用了。
