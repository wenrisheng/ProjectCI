#!/bin/bash
echo -e "\033[31m ================================================= \033[0m"
echo -e "\033[31m 开始打包... \033[0m"
echo -e "\033[31m ================================================= \033[0m"

# yum -y install apache-maven
cd ../
profileActive=dev
if [ -n "$1" ]; then
profileActive=$1
fi
packageCMD="mvn clean package"
packageCMD=${packageCMD}" -Dmaven.test.skip=true"
packageCMD=${packageCMD}" -P ${profileActive}"
packageCMD=${packageCMD}" > /dev/null"
echo -e "\033[31m ${packageCMD} \033[0m"
eval $packageCMD
ls target/

