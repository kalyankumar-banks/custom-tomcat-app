FROM amazoncorretto:11-alpine3.18
RUN apt install curl wget unzip -y
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.104/bin/apache-tomcat-9.0.104.tar.gz -o /tmp/tomcat9.tar.gz
RUN cd /tmp && tar xvdf tomcat9.tar.gz \ && cp -Rv /tmp/apache-tomcat-9.0.104.tar.gz /* /usr/local/tomcat/
EXPOSE 8080
CMD ["catalina.sh"]
