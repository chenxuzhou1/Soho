#!/bin/bash
echo "update logging configuration..."
sudo sh -c "echo '*.info;mail.none;authpriv.none;cron.none /dev/ttyS0' >> /etc/rsyslog.conf"
sudo systemctl restart rsyslog

echo logged in as $USER.
echo in directory $PWD

echo "installing wget..."
sudo apt install wget -y
sudo apt update

echo "installing unzip..."
sudo apt install unzip -y
sudo apt update

echo "installing git..."
sudo apt install git -y
sudo apt update

echo "installing gnupg..."
sudo apt install gnupg -y
sudo apt update

echo "installing MariaDB..."
sudo apt install mariadb-server -y
sudo systemctl start mariadb
sudo systemctl status mariadb
sudo systemctl enable mariadb
sudo apt update
mysql --version

echo "installing gitlab server key..."
sudo touch ~/.ssh/known_hosts
sudo chown debian:debian ~/.ssh/known_hosts
sudo ssh-keyscan git.cardiff.ac.uk >> ~/.ssh/known_hosts
sudo chmod 644 ~/.ssh/known_hosts


# Update package lists
echo "Updating package lists..."
sudo apt update

# Install Java 17 using APT
echo "Installing Java 17..."
sudo apt install openjdk-17-jdk -y


# Configure MariaDB root user password
echo "Configuring MariaDB root user password..."
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'comsc'; FLUSH PRIVILEGES;"

echo "installing gradle..."
# 定义Gradle版本和安装路径
GRADLE_VERSION="8.7"
GRADLE_PATH="/opt/gradle"



# 下载Gradle
echo "Downloading Gradle..."
wget "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"

# 解压Gradle到指定目录
echo "Installing Gradle..."
sudo mkdir -p ${GRADLE_PATH}
sudo unzip -d ${GRADLE_PATH} "gradle-${GRADLE_VERSION}-bin.zip"
sudo ln -sfn ${GRADLE_PATH}/gradle-${GRADLE_VERSION} ${GRADLE_PATH}/gradle
sudo chmod +x ${GRADLE_PATH}/gradle/bin/gradle

# 设置环境变量
echo "Setting up environment variables for Gradle..."
GRADLE_PROFILE_SCRIPT="/etc/profile.d/gradle.sh"
sudo touch ${GRADLE_PROFILE_SCRIPT}
echo "export GRADLE_HOME=${GRADLE_PATH}/gradle" | sudo tee -a ${GRADLE_PROFILE_SCRIPT}
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" | sudo tee -a ${GRADLE_PROFILE_SCRIPT}

# 应用环境变量
source ${GRADLE_PROFILE_SCRIPT}
## 构建项目
#echo "Building project..."
#cd /home/debian/team-8-soho-kids-christmas-lights
#gradle build

echo "needs to be in root account"
cd root

touch .ssh/known_hosts
ssh-keyscan git.cardiff.ac.uk >> .ssh/known_hosts
chmod 644 .ssh/known_hosts

echo "now needs to be in rocky user directory"
cd /home/debian

cat << `EOF` >> gitlab_project_keypair.key
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
`EOF`
chmod 400 gitlab_project_keypair.key
ssh-agent bash -c 'ssh-add gitlab_project_keypair.key; git clone git@git.cardiff.ac.uk:c23085317/team-8-soho-kids-christmas-lights.git'

echo "Building DB from team8sohokids_backup.sql"
cd team-8-soho-kids-christmas-lights
cd src
DB_USER="root"
DB_PASSWORD="comsc"
DB_HOST="localhost"
DB_PORT="3306"
DB_PATH2="BuildDB.sql"
mysql -u ${DB_USER} -p${DB_PASSWORD} -h ${DB_HOST} -P ${DB_PORT} < ${DB_PATH2}





sudo apt update
cd ..

echo "installing docker..."
sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version
sudo apt update

#echo "installing nexus..."
#sudo docker pull sonatype/nexus3
#sudo docker run -d -p 8081:8081 --name nexus sonatype/nexus3

sudo apt install gnupg ca-certificates curl -y
curl -s https://repos.azul.com/azul-repo.key | sudo gpg --dearmor -o /usr/share/keyrings/azul.gpg
echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | sudo tee /etc/apt/sources.list.d/zulu.list
sudo apt update



echo "installing maven..."
sudo apt install maven -y
sudo mvn --version
sudo apt update

gradle --version
sudo apt update
cd team-8-soho-kids-christmas-lights
gradle build
gradle bootrun

