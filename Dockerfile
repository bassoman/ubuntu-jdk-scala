FROM bassoman/ubuntu-jdk
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update && apt-get install -y \
	curl \
	wget \
	unzip

RUN curl "http://www.scala-lang.org/files/archive/scala-2.9.3.zip" \
  -o "/opt/scala-2.9.3.zip" && \
  cd /opt && \
  unzip scala-2.9.3.zip

ENV SCALA_HOME /opt/scala-2.9.3
ENV PATH $SCALA_HOME/bin:$PATH
