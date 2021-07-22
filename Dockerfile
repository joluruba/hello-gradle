FROM openjdk:11.0.11-9-jdk-buster
# RUN apk update
# RUN apk add apache2
COPY ./ /var/scr/app
ENV PATH "$PATH:/var/scr/app"
WORKDIR /var/scr/app
# LABEL verion ="alpine:latest"
# EXPOSE 80/tcp
CMD gradlew bootRun
# ENTRYPOINT ["gradlew","bootRun"]
