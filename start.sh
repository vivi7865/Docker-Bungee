#!/bin/sh
cd /BungeeCord

if [ ! -e $SERVER_JAR ]; then
  echo "Downloading BungeeCord ..."
  wget -O "$SERVER_JAR" -q "$DOWNLOAD_URL"
fi

if [ ! -e config.yml ]; then
  cp /tmp/config.yml .
fi

java $JVM_OPTS -jar $SERVER_JAR
