#!/bin/bash
set -e
TOMCAT_DIR=/opt/tomcat
WAR_NAME="Ecomm.war"
SOURCE_WAR="/home/ec2-user/$WAR_NAME"
TARGET_WAR="$TOMCAT_DIR/webapps/$WAR_NAME"
APP_DIR="$TOMCAT_DIR/webapps/Ecomm"

echo "======== Deploying WAR file ========="
sudo rm -rf "$APP_DIR"
sudo rm -f "$TARGET_WAR"

if [ -f "$SOURCE_WAR" ]; then
    sudo cp "$SOURCE_WAR" "$TARGET_WAR"
    echo "✅ WAR file deployed."
else
    echo "❌ WAR file not found at $SOURCE_WAR"
    exit 1
fi
