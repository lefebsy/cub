FROM ubuntu:16.04

#curl + gettext qui contient envsubst en alternative rapide à moustache
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install curl gettext \
  && rm -rf /var/lib/apt/lists/*

# Download mo
RUN curl -k -sSL https://git.io/get-mo -o mo \
    && chmod +x mo \
    && mv mo /usr/local/bin/
