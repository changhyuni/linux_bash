#!/bin/bash
# Uninstall old versions
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# Install using the repository
# 1. SET UP THE REPOSITORY

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 2. INSTALL DOCKER ENGINE
# Install the latest version of Docker Engine and containerd

sudo yum install -y docker-ce docker-ce-cli containerd.io

# 3. Start Docker and add group user

sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
sudo service restart docker

# 4. Verify that Docker Engine is installed correctly by running the hello-world image.

sudo docker run hello-world
# This command downloads a test image and runs it in a container. When the container runs, it prints an informational message and exits.
