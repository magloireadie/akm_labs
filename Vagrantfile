# -*- mode: ruby -*-
# vi: set ft=ruby :

#Vagrant.configure("2") do |config|
#  config.vm.box = "base"
#end

Vagrant.configure("2") do |config|
  #  config.vm.box = "ubuntu/focal64"
    config.vm.define "nginx" do |nginx|
        nginx.vm.box = "ubuntu/focal64"
      #nginx.vm.network "forwarded_port", guest: 80, host: 80
        nginx.vm.network "private_network", ip: "192.168.1.123", :netmask => "255.255.255.0"
        nginx.vm.hostname = "akmnginx"
        nginx.vm.provider "virtualbox" do |vb|
            vb.name = "UB2004S_nginx"
            vb.memory = 2048
            vb.cpus = 1
        end
        nginx.vm.provision :shell do |shell|
            shell.path ="install_nginx.sh"
        end
    end
  end