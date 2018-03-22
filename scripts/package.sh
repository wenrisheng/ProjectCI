#!/bin/bash
echo -e "\033[31m ================================================= \033[0m"
echo -e "\033[31m 开始打包... \033[0m"
echo -e "\033[31m ================================================= \033[0m"

# yum -y install apache-maven
cd ../
mvn clean package -Dmaven.test.skip=true
ls target/

