#!/bin/bash
echo -e "\033[31m ================================================= \033[0m"
echo -e "\033[31m 开始打包... \033[0m"
echo -e "\033[31m ================================================= \033[0m"

# yum -y install apache-maven
cd ../
profileActive=dev
if [ -n "$1" ]; then
profileActive=$1
echo "参数：$1"
fi
packageCMD="mvn clean package -Dmaven.test.skip=true -P ${profileActive}"
echo -e "\033[31m ${packageCMD} \033[0m"
eval $packageCMD
ls target/

