# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :forwarded_port, guest: 4000, host: 4000
  config.vm.provision :shell,
      :inline => "
        sudo apt-get -y update
        sudo apt-get -y install curl git-core build-essential python-software-properties python g++ make
        sudo add-apt-repository -y ppa:chris-lea/node.js
        sudo apt-get -y update
        curl -sSL https://get.rvm.io | bash -s stable --ruby
        source ~/.profile
        source /usr/local/rvm/scripts/rvm
        source /etc/profile.d/rvm.sh
        rvm requirements
        rvm install ruby
        rvm use ruby --default
        rvm rubygems current
        gem install bundler
        sudo apt-get install default-jre
        sudo apt-get install -y nodejs
        source ~/.profile
        sudo npm install -g bower
        "
end