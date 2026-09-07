#!/bin/sh
set -e

# Render tự set biến PORT, mặc định 8080 nếu chạy local
PORT="${PORT:-8080}"

# Sửa cổng HTTP connector trong server.xml của Tomcat
sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml

exec catalina.sh run
