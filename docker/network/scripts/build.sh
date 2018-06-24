#!/usr/bin/env bash

function add_user {
    apt-get update
    apt-get install -y sudo

    adduser network && \
    echo "network ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/network && \
    chmod 0440 /etc/sudoers.d/network
    sudo su - network
}

function install_tools {
    sudo apt-get install -y apt-utils
}

function install_mininet_from_repo {
    sudo apt-get install -y mininet=2.2.1-4
}
