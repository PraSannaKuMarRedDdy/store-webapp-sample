clear
yum update -y
clear
yum install -y docker nginx git
clear
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
yum install wget
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins
yum update -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
yum update -y
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins
vi /etc/nginx/nginx.conf
ll -d server {
    listen       80;
    server_name  _;
    location / {
            proxy_pass http://127.0.0.1:8080;
    }
}
ll d- /etc/nginx/nginx.conf
clear
ls -ld /etc/nginx/nginx.conf
ls -l /etc/nginx/nginx.conf
yum install nginx
clear
service docker start
systemctl restart docker.service
clear
yum install docker.io
yum install docker-io
yum install docker
clear
su - jenkins
vi /etc/passwd
clear
visudo 
passwd jenkins
su - jenkins
systemctl start jenkins.service
systemctl status jenkins.service
systemctl restart jenkins.service
vi /etc/passwd
systemctl restart jenkins.service
journalctl -xe
clear
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum update -y
clear
yum install jenkins
clear
yum install java
systemctl restart jenkins.service
clear
vi /etc/passwd
clear
su - jenkins
usermod -a -G docker jenkins
docker PS
clear
yum install docker-io
yum remove docker-io
yum install docker-io
usermod -a -G docker jenkins
systemctl start docker.service
usermod -a -G docker jenkins
systemctl start docker.service
usermod -aG docker jenkins
clear
su - jenkins
clear
docker loogin
docker login
su - jenkins
systemctl restart jenkins.service
systemctl restart docker.service
gpasswd -a jenkins docker
docker version
usermod -a -G docker jenkins
sudo su - jenkins
clear
yum install docker.io
yum install docker-io
clear
systemctl restart docker
systemctl enable docker
reboot
clear
usermod -aG docker jenkins
vi /etc/passwd
usermod -aG dockerroot jenkins
su - jenkins
lc
e
aclear
su - jenkins
clear
su - jenkins
clear
su - jenkins
clear
su - jenkins
su 0 jenkins
su - jenkins
cldar
clear
su - jenkins
clear
cd /var/lib/jenkins/
ls
cd workspace/
ls
cd Build_Deploy_Stage/
ls
cd ../demo/
;ls
ls
clear
ls
cd /var/lib/jenkins/
cd workspace/
ls
cd Build_Dev-stage/
ls
cd target/
ls
java -jar store-webapp-capsule.jar
ps -ef | grep java
ls
cd ..
ls
cd src/
ls
cd main/
ls
cd ..
grep -ril 8080 * 
cd ..
ls
vim app.json 
yum install vim \
yum install vim 
yum install vim \
vim app.json 
ls
service  jenkins stop
ls
cd target/
ls
java -jar store-webapp-capsule.jar
curl ifconfig.me
java -jar store-webapp-capsule.jar
service jenkins start
ls
cd -
ls
vi app.json 
ps -ef | grep java
netstat -ntulp
clear
docker run -d -P --log-driver=awslogs --log-opt awslogs-region=us-east-1 --log-opt awslogs-group=test/test.log --log-opt awslogs-stream=ewales redis
ls
clear
aws configure
su - jenkins
aws configure
clear
ls -la $AWS_SHARED_CREDENTIALS_FILE
cd root/.aws
ls
cd /root/.aws/
;s
ls
clear
cd
clearcd
su - jenkins
clear
df -h
free -m
clear
clear
cd /var/lib/jenkins/workspace/
ls
cd Build_Test-stage/
;s
clear
ls -lrt
cd target/
;s
ls
java -jar store-webapp.jar 
java -jar store-webapp-capsule.jar 
clear
ls
java -jar store-webapp-capsule.jar 
netstat -ntlup
java -jar store-webapp-capsule.jar 
clear
su -jekins
sudo su - jenkins
aws ecr get-login --no-include-email --region us-east-1
sudo su - jenkins
cd /var/lib/jenkins/
ls
cd workspace/
ls
cd Build_Test-stage/
;s
ls
clear
ls
cd target/
;s
ls
java -jar store-webapp-capsule.jar
ls
java -jar store-webapp-capsule.jar
ls
cd ../
;s
ls
vi Dockerfile 
docker build -t javaapp .
docker images
docker ps
dockder run -d -p 8080:8000 javaapp
docker run -d -p 8080:8000 javaapp
docker run -d -p 8000:8000 javaapp
docke rps
docker ps
docker stop 82953de5faef
docker ps
docker rmi 55ec125d96dd 
docker rmi -f 55ec125d96dd 
docker images
clear
vi /etc/default/
cd /etc/default/
ls
cd
clear
cd /etc/
ll | grep default/
cd default/
ls
cd useradd 
vi useradd 
s
cd /var/lib/jenkins/
\ls
cd workspace/
ls
cd Build_Test-stage/
ls
cd
ls
cd /
ls
cd
mkdir app
ls
cd /
cd
cd app/
ls
cd /.
cd /var/
pwd
clear
ls
cd
clear
df -h
clear
