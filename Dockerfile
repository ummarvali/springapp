FROM adoptopenjdk/openjdk8:ubi-jre
USER root

RUN microdnf install yum

RUN yum update -y
RUN mkdir  -p /opt/app
RUN ls -ltr
COPY target/app.jar /opt/app/app.jar
ENV PORT 8080
EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java -jar /opt/app/app.jar" ]
