#!/bin/bash
set -e
TOMCAT_DIR=/opt/tomcat
TOMCAT_USER="ec2-user"

echo "======== Configuring Tomcat Manager and Users ========="
sudo cp /home/ec2-user/tomcat-users.xml $TOMCAT_DIR/conf/tomcat-users.xml
sudo chown $TOMCAT_USER:$TOMCAT_USER $TOMCAT_DIR/conf/tomcat-users.xml

MANAGER_CONTEXT="$TOMCAT_DIR/webapps/manager/META-INF/context.xml"
sudo sed -i '/RemoteAddrValve/d' "$MANAGER_CONTEXT"

sudo mkdir -p $TOMCAT_DIR/temp
sudo mkdir -p $TOMCAT_DIR/logs
sudo chown -R $TOMCAT_USER:$TOMCAT_USER $TOMCAT_DIR
