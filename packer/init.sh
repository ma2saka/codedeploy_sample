# init
yum groupinstall -y 'Development Tools'
pip install --upgrade pip awscli boto boto3 click
yum install -y git vim nc telnet socat bash-completion
yum --enablerepo=epel install -y bash-completion

# mysql client
yum --enablerepo=epel install -y mysql56

# nginx install
yum install -y nginx
chkconfig nginx on

# codedeploy agent
cd /home/ec2-user
aws s3 cp s3://aws-codedeploy-us-east-1/latest/install . --region us-east-1
chmod +x ./install
sudo ./install auto

# ssh keys
cd /home/ec2-user
mkdir -p .ssh
curl -s https://github.com/ma2saka.keys >> .ssh/authorized_keys
chmod 700 .ssh/
chmod 600 .ssh/authorized_keys

# yum update
yum update -y
