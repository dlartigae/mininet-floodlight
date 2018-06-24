#!/usr/bin/env bash

sudo service openvswitch-switch start
sudo mn --test iperf --controller=remote,ip=$CONTROLLER_IP,port=6653

