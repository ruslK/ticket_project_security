FROM openjdk:11-jdk
COPY ./target/ticketsproject-0.0.1-SNAPSHOT.jar  /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch ticketsproject-0.0.1-SNAPSHOT.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","ticketsproject-0.0.1-SNAPSHOT.jar"]