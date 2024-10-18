#!/bin/bash

services=("firewalld" "NetworkManager" "sddm" "bluetooth" "cups")

for service in "${services[@]}"; do
    echo "Enabling and starting $service..."
    sudo systemctl enable --now $service
done
# Run locale-gen to generate locales
sudo locale-gen

