FROM amazoncorretto:11-alpine3.18
RUN apk update && apk add wget
ENV CATALINA_HOME=/usr/local/tomcat
WORKDIR $CATALINA_HOME
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.104/bin/apache-tomcat-9.0.104.tar.gz \
    && tar xzvf apache-tomcat-9.0.104.tar.gz -C /usr/local/tomcat --strip-components=1 \
    && rm apache-tomcat-9.0.104.tar.gz
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
