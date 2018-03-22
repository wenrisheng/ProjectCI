#!/bin/bash
echo -e "\033[31m ================================================= \033[0m"
echo -e "\033[31m 开始上传... \033[0m"
echo -e "\033[31m ================================================= \033[0m"

#cd ../
warFile="ProjectCI.war"
warFilePath="target/${warFile}"
tomcatHome="~/Documents/apache-tomcat-9.0.6"
cpCMD="cp -rf ${warFilePath} ${tomcatHome}/webapps"
echo -e "\033[31m ${cpCMD} \033[0m"
eval $cpCMD

binPath="${tomcatHome}/bin"
stopCMD="${binPath}/shutdown.sh"
startCMD="${binPath}/startup.sh"
eval $stopCMD
eval $startCMD


