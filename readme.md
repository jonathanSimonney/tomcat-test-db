# installation

First, make sure tomcat is installed.  
Then, copy this repository file into your ```$CATALINA_HOME/webapps``` directory.

Lanch the init.sql script into your database, and create a user named javauser with password javadude with access to the database you just created (javatest).  

Finally, update the ```META-INF/context.xml```, to change the url to match your sql host url (all you have to do is replace localhost:3306 with your host url) : 

# additional informations

If you're new to tomcat, here is a [link](https://stackoverflow.com/questions/3090398/tomcat-catalina-base-and-catalina-home-variables) to explain what ```CATALINA_HOME``` and ```CATALINA_BASE``` are.