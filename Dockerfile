FROM lavrov/graalvm:1.0.0-rc3

LABEL maintainer="Vitaly Lavrov <lavrovvv@gmail.com>"

ARG SBT_VERSION

RUN \
  apt update && \
  apt install -y curl && \
  curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt install sbt && \
  sbt sbtVersion

WORKDIR /root
