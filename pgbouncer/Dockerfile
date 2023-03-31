FROM ubuntu:kinetic

ARG USERNAME=ucloud
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN set -eux; \
    groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    sudo \
    wget \
    gnupg2 \
    lsb-release \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

WORKDIR /work

ADD .bash .bash 

RUN . .bash/main.sh
