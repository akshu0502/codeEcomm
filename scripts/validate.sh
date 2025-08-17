#!/bin/bash
set -e
echo "======== Validating Tomcat Service ========="
if systemctl is-active --quiet tomcat; then
  echo "✅ Tomcat is running"
else
  echo "❌ Tomcat failed to start"
  exit 1
fi
