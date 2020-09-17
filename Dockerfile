FROM hemanthpeddi/hemanthtomcat1:1

MAINTAINER hemanth.sai01@gmail.com

RUN chmod 777 /usr/local/tomcat/
COPY ["jenkins.war","/usr/local/tomcat/webapps/"]
COPY ["context.xml","/usr/local/tomcat/webapps/manager/META-INF"]
COPY ["tomcat-users.xml","/usr/local/tomcat/conf/"]

CMD ["catalina.sh","run"]
