#!/bin/bash

if ! command -v multipass &> /dev/null; then
    echo "Multipass is not installed. Installing..."
    sudo snap install multipass
else
    echo "Multipass already exists."
fi
#This script installs multipass if it does not exist and if it does it returns the prompt "Multipass already exists"

## Multipass Instance 
#To create a virtual machine in the multipass, use the command:
echo "enter your vm name"
read -r vm
echo "launching a VM: $vm"
multipass launch --name $vm

#Then use this command to start the VM:
echo "starting vm ..."
multipass start $vm

#And then use this command to log into the VM shell:
echo "starting vm .."
multipass shell $vm


