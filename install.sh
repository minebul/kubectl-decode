#!/bin/bash

DIRECTORY=$(dirname $(which kubectl))

# Move plugins and add location to path (required for kubectl 1.12+)
sudo chmod +x ./kubectl-decode
sudo cp -r ./kubectl-decode "${DIRECTORY}/"

# Finished
echo -e "\nDone.\n"
kubectl plugin list --name-only | sed 's|-| |g'