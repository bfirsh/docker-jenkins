FROM ubuntu
MAINTAINER Allan Espinosa "allan.espinosa@outlook.com"

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /root/jenkins.war

EXPOSE 8080
CMD ["java", "-jar", "/root/jenkins.war"]
