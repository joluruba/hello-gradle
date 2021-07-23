FROM openjdk:11.0.11-9-jdk-buster
ENV PATH "$PATH:/var/scr/app"
# RUN apk update
# RUN apk add apache2
WORKDIR /var/scr/app
# COPY ./build/libs/demo-0.0.1-SNAPSHOT.jar /var/scr/app
COPY ./ /var/scr/app
RUN ./gradlew assemble \
  && rm -rf /root/.gradlew
# LABEL verion ="alpine:latest"
# EXPOSE 80/tcp
# CMD gradlew bootRun
WORKDIR /var/scr/app/build/libs
CMD java -jar demo-0.0.1-SNAPSHOT.jar
# ENTRYPOINT ["gradlew","bootRun"]
