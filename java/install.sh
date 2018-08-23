#!/bin/bash -e

echo "================= Installing default-jdk & jre ==================="
apt-get install -qq default-jre=2:1.8*
apt-get install -qq default-jdk=2:1.8*

echo "================= Installing openjdk-10-jdk ==================="
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update -qq
apt-get install -qq -y openjdk-10-jdk
update-alternatives --set java /usr/lib/jvm/java-10-openjdk-arm64/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-10-openjdk-arm64/bin/javac
add-apt-repository -y ppa:maarten-fonville/ppa
apt-get update -qq
apt-get install -qq icedtea-10-plugin=1.6*
update-alternatives --set javaws /usr/lib/jvm/java-10-openjdk-arm64/jre/bin/javaws
