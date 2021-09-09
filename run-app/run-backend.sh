#!/usr/bin/env bash
echo "Hello from backend!"

# export the env variable
sudo echo "export PORT=4001" >> /home/vagrant/.bashrc
source  /home/vagrant/.bashrc

# open the app folder
cd /shared

# run the process on background
nohup ./vuego-demoapp > output.log 2>&1 &

# check the execution of the right process
ps -aux