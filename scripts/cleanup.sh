#!/bin/bash
set -e

echo "[INFO] Cleaning up old deployment files..."
rm -f /home/ec2-user/Ecomm.war
rm -f /home/ec2-user/tomcat-users.xml
