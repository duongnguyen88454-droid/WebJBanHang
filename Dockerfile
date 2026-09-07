# ---------- Stage 1: Build WAR bằng Maven ----------
FROM maven:3.9-eclipse-temurin-11 AS build
WORKDIR /app

# Copy pom.xml trước để tận dụng cache layer khi dependencies không đổi
COPY pom.xml .
RUN mvn -B dependency:go-offline || true

COPY src ./src
RUN mvn -B clean package -DskipTests

# ---------- Stage 2: Chạy bằng Tomcat ----------
FROM tomcat:9.0-jdk11-temurin

# Xoá webapp mặc định, deploy WAR của mình vào ROOT để truy cập ở "/"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/SessionPractice.war /usr/local/tomcat/webapps/ROOT.war

# Script khởi động: Render cấp cổng qua biến môi trường PORT (không cố định 8080)
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
