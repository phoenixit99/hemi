#!/bin/bash

# Check if the service is active
systemctl is-active --quiet hemid.service
if [ $? -ne 0 ]; then
  echo "$(date): hemid.service is not running. Attempting to start..."
  systemctl start hemid.service

  # Verify if the service started successfully
  if [ $? -eq 0 ]; then
    echo "$(date): hemid.service started successfully."
  else
    echo "$(date): Failed to start hemid.service."
  fi
else
  echo "$(date): hemid.service is running."
fi