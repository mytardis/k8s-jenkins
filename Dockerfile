FROM jenkins/jenkins:2.168-alpine

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY *.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
