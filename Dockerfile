FROM jenkins/jenkins:lts-alpine


# Switch user to root
USER root

# Update system software
RUN apk --no-cache update
RUN apk --no-cache upgrade

# Install system utilities
RUN apk add --no-cache openrc
RUN apk add --no-cache shadow

# Install Python
RUN apk add --update \
    python \
    python-dev \
    build-base

# Install PIP
RUN apk add --no-cache py-pip
RUN pip install --upgrade pip
ENV PATH="~/.local/bin:${PATH}"

# Install AWS CLI
RUN pip install awscli --upgrade --user

# Install JQ (Used by AWS deployment scripts)
RUN apk add --no-cahce jq

# Clean up after AWS CLI installation
RUN apk --purge -v del py-pip
RUN rm -rf /var/cache/apk/*

# Install Docker
RUN apk add --no-cache docker
RUN rc-update add docker boot
