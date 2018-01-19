#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# Set magic variables for current file & dir
__this_directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install the jupyterhub service file
cp ${__this_directory}/jupyterhub /etc/init.d/jupyterhub
chmod +x /etc/init.d/jupyterhub

# Install the configuration file
mkdir /etc/jupyterhub
cp jupyterhub_config.py /etc/jupyterhub/

# Start jupyterhub on boot
update-rc.d jupyterhub defaults