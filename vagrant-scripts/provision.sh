#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y dist-upgrade

echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
locale-gen en_US.UTF-8

# Add some package repos and pre-reqs
apt-get install -y software-properties-common curl apt-transport-https
apt-get update

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

su -l -c 'touch ~/.bash_profile' vagrant

# Node 6.10.3
su -l -c 'export PROFILE=~/.bash_profile && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash' vagrant
su -l -c 'source ~/.bash_profile' vagrant
su -l -c 'nvm install node 10.7.0' vagrant
su -l -c 'node --version' vagrant
su -l -c 'npm --version' vagrant

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

