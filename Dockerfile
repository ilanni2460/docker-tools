ARG KUBECTL_VERSION
FROM bitnami/kubectl:${KUBECTL_VERSION}
LABEL maintainer="烂泥行天下" \
      email="ilanni@ilanni.com"

USER root
RUN set -xe \
&&  echo "https://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
&&  echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
&&  echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
&&  apk add --allow-untrusted \
    bash \
    coreutils \
    ca-certificates \
    curl \
    git \
    git-lfs \
    gnupg \
    musl-locales \
    musl-locales-lang \
    openssh-client \
    tini \
    ttf-dejavu \
    tzdata \
    unzip \
    jq \
    busybox-extras \ 
    lrzsz \
    wget \
&& ln -s /usr/bin/lrz /usr/bin/rz \
&& ln -s /usr/bin/lsz /usr/bin/sz \
&& chmod u+s /bin/busybox
