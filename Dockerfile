FROM openjdk:8-jre-slim
VOLUME /tmp
ADD target/store-webapp-capsule.jar target/app.jar
RUN sh -c 'touch target/app.jar'
EXPOSE 8080
ENV JAVA_OPTS=""
ENTRYPOINT ["java", "-jar","target/app.jar"]
