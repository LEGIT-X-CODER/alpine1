#!/bin/sh
# setup.sh — Q1 & Q2: Single Alpine VM (Tomcat + UI)

echo "🚀 Setting up Q1/Q2 Environment..."
apk update
apk add openjdk17 maven tomcat10 git make

# Create DB dir
mkdir -p /opt/alpine-webtech/derbydb
chmod -R 777 /opt/alpine-webtech

# Build & Deploy
mvn clean package -DskipTests
cp target/alpine-webtech.war /var/lib/tomcat10/webapps/

# Start
rc-update add tomcat10 default
rc-service tomcat10 restart

echo "✅ Q1/Q2 Ready! Visit http://<VM_IP>:8080/alpine-webtech/"
echo "📱 For Q2, ensure your phone is on the same hotspot as the VM."
