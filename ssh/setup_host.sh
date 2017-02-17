#!/bin/bash

cp id_rsa_tpasi ~/.ssh
chmod 400 ~/.ssh/id_rsa_tpasi

cat << EOF >> ~/.ssh/config
host piensg*
	user pirate
	StrictHostKeyChecking no
	identityfile ~/.ssh/id_rsa_tpasi
EOF
