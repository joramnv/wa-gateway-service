# Docker file for the Weekly Achievements Discovery Service
#
# Version 0.0.1

#jdk image
FROM frolvlad/alpine-oraclejdk8:slim

# install

# label for the image
LABEL Description="Discovery Service" Version="0.0.1-SNAPSHOT"

# the version of the archive
ARG VERSION=0.0.1-SNAPSHOT

# mount the temp volume
VOLUME /tmp

# Add the service as app.jar
ADD build/libs/wa-gateway-service-${VERSION}.jar app.jar

# touch the archive for timestamp
RUN sh -c 'touch /app.jar'

# entrypoint to the image on run
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]