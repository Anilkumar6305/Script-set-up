#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.9.56886.zip
unzip sonarqube-9.9.8.100196.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-8.9.9.56886 -R
chmod 777 sonarqube-9.9.8.100196 -R
su - sonar
cd sonarqube-8.9.9.56886/bin/linux-x86-64
./sonar.sh status
./sonar.sh start
#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
