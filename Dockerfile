FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteracive

# Upgrade
RUN apt update && \
    apt dist-upgrade -y

# Install necessary packages
RUN apt install -y software-properties-common curl git build-essential sudo

# Install ansible
RUN add-apt-repository --yes --update ppa:ansible/ansible && \
    apt install ansible -y

# Add user
RUN useradd -m elfremen && echo "elfremen:elfremen" | chpasswd
# Add user to sudo
RUN adduser elfremen sudo

# USER elfremen
USER elfremen
WORKDIR /home/elfremen

COPY --chown=elfremen:elfremen ./local.yml ./local.yml
COPY --chown=elfremen:elfremen ./tasks ./tasks
