# dv-ds-20201c-g00
Escuela Davinci
Diseño de Sistemas
2020 1er Cuatrimestre

Trabajo Final


Instalar Lombok en Eclipse o Intellij
https://projectlombok.org/

https://www.baeldung.com/lombok-ide
https://search.maven.org/search?q=g:org.projectlombok%20AND%20a:lombok&core=gav

Modificaciones al POM.XML

<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
<project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>


<!-- https://mvnrepository.com/artifact/javax.validation/validation-api -->
<dependency>
    <groupId>javax.validation</groupId>
    <artifactId>validation-api</artifactId>
</dependency>

<!-- https://mvnrepository.com/artifact/org.hamcrest/hamcrest-all -->
<dependency>
    <groupId>org.hamcrest</groupId>
    <artifactId>hamcrest-all</artifactId>
    <version>1.3</version>
    <scope>test</scope>
</dependency>


H2 Database
https://www.baeldung.com/spring-boot-h2-database
https://howtodoinjava.com/spring-boot2/h2-database-example/

Agregado de junit jupiter al pom
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-api</artifactId>
    <scope>test</scope>
</dependency>
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-engine</artifactId>
    <scope>test</scope>
</dependency>

Agregado de la carpeta src/test/resources
Configurar con target/test-classes
Exclude **
Test resource

Agregar archivo application.property en test/resources
# spring.datasource.x
spring.datasource.url=jdbc:h2:mem:db;DB_CLOSE_DELAY=-1;DB_CLOSE_ON_EXIT=FALSE
spring.datasource.driver-class-name=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=sa

# hibernate.X
hibernate.dialect=org.hibernate.dialect.H2Dialect
hibernate.show_sql=true
hibernate.hbm2ddl.auto=create-drop
hibernate.cache.use_second_level_cache=true
hibernate.cache.use_query_cache=true
hibernate.cache.region.factory_class=org.hibernate.cache.ehcache.EhCacheRegionFactory

spring.datasource.data=classpath:/data/h2db/data.sql

# Show SQL
spring.jpa.show-sql=false
spring.jpa.properties.hibernate.format_sql=false

#Login sentences
logging.level.org.hibernate.SQL=DEBUG
logging.level.org.hibernate.type.descriptor.sql.BasicBinder=TRACE

Agregar archivos data/h2db/schema.sql y data.sql para h2




