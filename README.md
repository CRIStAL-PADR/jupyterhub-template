# jupyterhub-template

# Create an Amazon EC2 ubuntu machine
# Configure SSH  inbound access in port 22 from your IP
# Configure HTTP inbound access in port 80
# Check proxy in Centrale

# Get SSL certificate
# https://certbot.eff.org
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:certbot/certbot
$ sudo apt-get update
$ sudo certbot certonly --standalone -d ec2-18-218-48-113.us-east-2.compute.amazonaws.com

# Basic
$ sudo apt-get update
$ sudo apt-get install python3-pip

$ export LC_ALL="en_US.UTF-8"
$ export LC_CTYPE="en_US.UTF-8"

# Pip
$ python3 -m pip install --upgrade pip

# Jupyterhub
$ sudo apt-get install npm nodejs-legacy
$ sudo npm install -g configurable-http-proxy

# Install oauthenticator to login using github
sudo pip install oauthenticator

# Install docker
$ sudo apt-get update
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"   
$ sudo apt-get update
$ sudo apt-get install docker-ce

#test
$ sudo docker run hello-world

# Install jupyterhub's dockerspawner and default single user image
sudo pip install dockerspawner
sudo docker pull jupyterhub/singleuser:0.8


# Create a docker from your dockerfile
docker build . -t demo

# Plan B: how to start locally the jupyter notebook

docker pull rbardenet/machin:1.2
docker run -p 80:8888 rbardenet/machin:1.2
