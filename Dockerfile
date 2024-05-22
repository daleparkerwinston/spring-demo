FROM amazoncorretto:21-alpine-jdk
LABEL authors="daleparker"
WORKDIR /demo
COPY /target/demo-0.0.1-SNAPSHOT.war .
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.war"]