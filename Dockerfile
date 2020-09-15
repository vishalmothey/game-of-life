FROM tomcat:8.0

MAINTAINER hemanth.sai01@gmail.com

COPY ["jenkins.war","/usr/local/tomcat/webapps/"]
COPY ["tomcat-users.xml","/usr/local/tomcat/conf/"]
RUN chmod 777 /usr/local/tomcat/

CMD ["catalina.sh","run"]
