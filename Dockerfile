#
# OpenJDK Java 6 JDK Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/openjdk-6-jdk
#

# Pull base image.
FROM ubuntu

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-6-jdk && \
  apt-get install -y tomcat6 tomcat6-admin && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64

EXPOSE 22
EXPOSE 8080

# Define default command.
CMD ["bash"]
