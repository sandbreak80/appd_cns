FROM centos

COPY ROOT.jar ui/bin/

RUN yum -y install java-1.8.0-openjdk-devel
RUN yum -y install net-tools
RUN yum -y install lsof

ENV PATH="/usr/lib/jvm/java-1.8.0-openjdk:${PATH}"
ENV JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk"

EXPOSE 8443
EXPOSE 443
EXPOSE 80

#!/bin/bash
CMD ./start-ui-site.sh

