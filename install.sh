#!/bin/bash

DIRECTORY=$(dirname $(which kubectl))
YQ_VERSION="v4.44.6"
YQ_BINARY="yq_linux_amd64"

# Install dependency

wget https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY}.tar.gz -O - | tar xz && mv ${YQ_BINARY} /usr/bin/yq

# Cleanup dependency
rm install-man-page.sh yq.1

# Move plugins and add location to path (required for kubectl 1.12+)
sudo chmod +x ./kubectl-decode
sudo cp -r ./kubectl-decode "${DIRECTORY}/"

# Finished
echo -e "\nkubectl-decode plugin was successfully installed!\n"
kubectl plugin list --name-only | sed 's|-| |g'