FROM itzg/ubuntu-openjdk-7

MAINTAINER vivi7865 <me@vivi7865.com>

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y wget && apt-get clean

RUN useradd -M -s /bin/false bungee \
  && mkdir /BungeeCord \
  && chown bungee:bungee /BungeeCord

EXPOSE 25565

ADD start.sh /start
ADD config.yml /tmp/config.yml
RUN chmod +x /start

USER bungee
VOLUME ['/BungeeCord']
WORKDIR /BungeeCord

CMD [ "/start" ]

ENV JVM_OPTS -Xms512M -Xmx512M
ENV SERVER_JAR BungeeCord.jar
ENV DOWNLOAD_URL http://ci.md-5.net/view/SpigotMC/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
