# installation

First, make sure tomcat is installed.  
Then, copy this repository file into your $CATALINA_HOME directory.

Lanch the init.sql script into your database, and create a user named javauser with password javadude with access to the database you just created (javatest).  

Finally, add a datasource in $CATALINA_BASE/conf/context.xml, looking like this : 

```xml
<Context>

    <!-- maxTotal: Maximum number of database connections in pool. Make sure you
         configure your mysqld max_connections large enough to handle
         all of your db connections. Set to -1 for no limit.
         -->

    <!-- maxIdle: Maximum number of idle database connections to retain in pool.
         Set to -1 for no limit.  See also the DBCP documentation on this
         and the minEvictableIdleTimeMillis configuration parameter.
         -->

    <!-- maxWaitMillis: Maximum time to wait for a database connection to become available
         in ms, in this example 10 seconds. An Exception is thrown if
         this timeout is exceeded.  Set to -1 to wait indefinitely.
         -->

    <!-- username and password: MySQL username and password for database connections  -->

    <!-- driverClassName: Class name for the old mm.mysql JDBC driver is
         org.gjt.mm.mysql.Driver - we recommend using Connector/J though.
         Class name for the official MySQL Connector/J driver is com.mysql.jdbc.Driver.
         -->

    <!-- url: The JDBC connection url for connecting to your MySQL database.
         -->

  <Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="javauser" password="javadude" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/javatest"/>

</Context>
```