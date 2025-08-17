#!/bin/bash
set -e
echo "======== Stopping Tomcat service ========"
sudo systemctl stop tomcat || true
