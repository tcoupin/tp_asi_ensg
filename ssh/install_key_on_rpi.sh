#!/bin/bash 

grep -o 'ansible_host=[^ ]*' ../ansible/inventory | awk -F '=' '{print $2}' | while read rpiip
do
	ssh-copy-id -i ./id_rsa_tpasi pirate@${rpiip}
done
