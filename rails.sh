#!/bin/sh

# Install Ruby
sudo apt-get -y update
sudo apt-get -y install git-core
sudo apt-get -y install libopenssl-ruby

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/bin:$PATH"
rbenv init -
rbenv install 1.9.3-p125
rbenv global 1.9.3-p125
rbenv rehash
wget http://rubyforge.org/frs/download.php/70696/rubygems-1.3.7.tgz
tar xzf rubygems-1.3.7.tgz
cd rubygems-1.3.7
~/.rbenv/versions/1.9.3-p125/bin/ruby setup.rb

sudo gem install bundler
bundle install
