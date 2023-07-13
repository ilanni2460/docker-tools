# Base OS Debian-11
ARG KUBECTL_VERSION=1.24.15
FROM bitnami/kubectl:${KUBECTL_VERSION}
LABEL maintainer="烂泥行天下" \
      email="ilanni@ilanni.com"

USER root
RUN set -xe \
&&  apt-get update \
&&  apt-get -y install \
    ansible \
    net-tools \
    telnet \
    procps \
    traceroute \
    bzip2 \
    vim \
    openssh-client \
    unzip \
    lrzsz \
    wget \
    jq \
    curl \
    git \
    bash-completion \
    iproute2 \
    iputils-ping \
    netcat \
    iftop \
    htop \
    rsync \
    less \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists /var/cache/apt/archives \
&& echo 'source <(kubectl completion bash)' >>~/.bashrc
