#! /usr/bin/bash
# Add Yum repo configuration
wget -q -O - https://updates.atomicorp.com/installers/atomic | sudo bash

# Server
sudo yum install ossec-hids-server

# Agent
sudo yum install ossec-hids-agent
