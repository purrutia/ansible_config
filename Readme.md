# Ansible Desktop

This repository is for creating ansible configuration to easy start a new machine.

## Testing the config

In order to test the config I created a Dockerfile that contains the ansible configuration.

To test the config locally (and not change the github repository all the time), you can:

- Run the script `./build_docker`, this creates the docker image *ansibletest:0.2*.
- Run the docker container with `docker run --rm -it ansibletest:0.2 bash`
- Run the local ansible command `ansible-playbook local.yml --ask-become-pass`
