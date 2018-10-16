FROM jenkins/jenkins:lts-alpine


# Switch user to root
USER root

# Update system software
RUN apk --no-cache update
RUN apk --no-cache upgrade

# Install system utilities
RUN apk add --no-cache openrc
RUN apk add --no-cache shadow

# Install AWS CLI
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base
RUN pip install --upgrade pip
RUN pip install awscli --upgrade --user
RUN apk --purge -v del py-pip
RUN rm -rf /var/cache/apk/*

ENV PATH="~/.local/bin:${PATH}"

# Install Docker
RUN apk add --no-cache docker
RUN rc-update add docker boot
