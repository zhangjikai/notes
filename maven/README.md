# 基本使用
<!-- toc -->

## 配置mirrors
找到 安装目录/conf/setting.xml
```xml
<mirrors>
    <mirror>
        <id>nexus-osc</id>
        <mirrorOf>central</mirrorOf>
        <name>Nexus osc</name>
        <url>http://maven.oschina.net/content/groups/public/</url>
    </mirror>
    <mirror>
        <id>nexus-tmatesoft</id>
        <mirrorOf>central</mirrorOf>
        <name>Nexus tmatesoft</name>
        <url>http://maven.tmatesoft.com/content/groups/public/</url>
    </mirror>
</mirrors>
```
## 使用properties定义变量
```xml
<properties>
    <spring.version>4.2.3.RELEASE</spring.version>
</properties>

<dependencies>
    <dependency>
        <groupId>org.springframework</groupId>
        <artifactId>spring-context</artifactId>
        <version>${spring.version}</version>
    </dependency>
</dependencies>
```
## 定义source和resources文件夹
```xml
<build>
    <sourceDirectory>src/main/java</sourceDirectory>
    <testSourceDirectory>src/test/java</testSourceDirectory>
    <resources>
        <resource>
            <directory>src/main/resources</directory>
        </resource>
    </resources>
</build>
```
## 配置编译JDK版本及生成独立jar包
```xml
<build>
    <plugins>

        <!-- 设置编译level -->
        <plugin>
            <artifactId>maven-compiler-plugin</artifactId>
            <configuration>
                <target>1.7</target>
                <source>1.7</source>
                <encoding>UTF-8</encoding>
            </configuration>
        </plugin>

        <!-- 配置生成独立jar, 执行 mvn package 命令-->
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-assembly-plugin</artifactId>
            <version>2.5.5</version>
            <configuration>
                <archive>
                    <manifest>
                        <mainClass>bitpal.Main</mainClass>
                    </manifest>
                </archive>
                <descriptorRefs>
                    <descriptorRef>jar-with-dependencies</descriptorRef>
                </descriptorRefs>
            </configuration>
            <executions>
                <execution>
                    <id>make-assembly</id>
                    <phase>package</phase>
                    <goals>
                        <goal>single</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>

    </plugins>
</build>
```
