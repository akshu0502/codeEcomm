#!/bin/bash
set -e
echo "======== Starting Tomcat ========="
sudo systemctl daemon-reload
sudo systemctl enable tomcat
sudo systemctl restart tomcat
