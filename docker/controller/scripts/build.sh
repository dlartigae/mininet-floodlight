#!/usr/bin/env bash

function add_user {
    apt-get update
    apt-get install -y sudo

    adduser controller && \
    echo "controller ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/controller && \
    chmod 0440 /etc/sudoers.d/controller
    sudo su - controller
}

function install_floodlight_dependencies {
    sudo apt-get install -y build-essential ant maven python-dev openjdk-8-jdk
}

function install_tools {
    sudo apt-get install -y apt-utils git
}

function install_floodlight_from_source {
    git clone git://github.com/floodlight/floodlight.git
    cd floodlight
    git submodule init
    git submodule update
    ant
}

