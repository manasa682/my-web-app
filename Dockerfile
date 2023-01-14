FROM tomcat:8.0.20-jre8
# Dummy text to test 
#COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war
COPY /home/vsts/work/1/s/target/myweb-8.2.0.war /usr/local/tomcat/webapps/myweb-8.2.0.war

