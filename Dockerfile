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
RUN apk add --no-cache aws-cli

# Install Docker
RUN apk add --no-cache docker
RUN rc-update add docker boot
