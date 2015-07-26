#!/bin/bash
#
# This file ensure we can easily build new docker test containers.
# Use the following instructions to do so:
#   https://github.com/inventid/puppet/wiki/Neo-docker-image

# Update everything
sudo apt-get update
sudo apt-get install python python-pip python-dev build-essential git curl -y
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install nodejs build-essential redis-server libmagic-dev git postgresql libpq-dev -y
npm install -g bower

# Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm

# Check the ruby versions
VERSIONS=`ruby -e "require 'yaml'
YAML.load(File.read('/test/shippable.yml'))['rvm'].each { |v| p v }" | tr -d '"'`

# Install all dependencies
cd /test
for v in $VERSIONS; do rvm install $v && rvm use $v && gem install bundler && bundle install --system --jobs=4 && echo "Installed ruby-${v} and gems correctly"; done

# Clear the container a bit
sudo apt-get autoremove -y; sudo apt-get clean autoclean -y
rm -rf /var/lib/{cache,log}/
rm -rf /var/lib/apt/lists/*

date > /opt/image-creation-date

echo "Logout of the container, do docker ps -a and grab the ID, then commit the FS using docker commit --author='Rogier Slag' <CONTAINER_ID> rogierslag/neo-test"
echo "Now push it to docker registery using docker push rogierslag/neo-test"
