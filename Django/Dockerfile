# Using the newest python image as base image
FROM python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1

# Setting username and group for new non-root user
ARG USERNAME=ucloud
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Creating user, updating apt repository, upgrading system dependencies and installing sudo and nginx
RUN set -eux; \
    groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \ 
    && apt-get upgrade -y \
    && apt-get install -y \
    sudo \
    nginx \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Copying nginx configuration to container
COPY nginx.conf /etc/nginx/nginx.conf

# Setting workdirectory
WORKDIR /work

# Installing python packages
COPY requirements.txt requirements.txt
RUN set -eux; pip install -U -r requirements.txt \
    && rm requirements.txt

# Setting newly created user as main user
USER $USERNAME