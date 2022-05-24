There are two ways to access our webpage, either through our own web server, or you can put all files locally and run the program locally.
1. Through the our own deployed server.
Here is the link to access our web information system:https://78-138-17-118.cloud-xip.io/ITEC4020/
2. Access LocallyFor Eclipse EE, create a Dynamic Web Project named ¡°Assignment2¡±, config with Apache Tomcat v8.5 or v8 and 3.1 Dynamic web module version. After creating this web project, create a java package named ¡°itec¡±, Please put imageHandler.java, loginHandler.java, logoutHandler.java under the path ¡°src/main/java¡± inside package ¡°itec¡±. In the folder called webapp, please put the whole image folder under it, also put loggedin.jsp and login.jsp under the same path. Inside WEB-INF, please replace our web.xml with the original one. 
Once you setup all the path correctly, and also make sure your Tomcat server up and running, you can right click login.jsp, run as, on the server, choose your Tomcat server and click finish. Our webpage should be running in your browser. Once you are in our webpage, the correct username and password will be shown belowUsername: adminPassword: passwordUsername: zenonPassword: passwordUsername: testPassword: password
These are the only authorized username and password, anything other than that will be denied. When you successfully enter the webpage, you can see the picture inside and also there is a button called log out to sign out. Once you sign out, you can¡¯t return back unless you reenter the username and password again.

3. Deploying onto a server

If you are the admin of a tomcat server you can deploy the ITEC4020.war file on your tomcat server.

First go to tomcats web manager page.

Second scroll down till you see option to upload War File to deploy.

Third upload ITEC4020.war and click on application path.