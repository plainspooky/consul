# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian/wheezy64"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "192"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end

  config.vm.provision "shell", path: "./scripts/software_update"
  config.vm.provision "shell", path: "./scripts/lighttpd_install"
  config.vm.provision "shell", path: "./scripts/consul_install"

  config.vm.define "n0" do |n0|
      n0.vm.hostname = "n0"
      n0.vm.network "private_network", ip: "172.20.20.10"
  end

  config.vm.define "n1" do |n1|
      n1.vm.hostname = "n1"
      n1.vm.network "private_network", ip: "172.20.20.11"
  end
  
  config.vm.define "n2" do |n2|
      n2.vm.hostname = "n2"
      n2.vm.network "private_network", ip: "172.20.20.12"
  end
  
  config.vm.define "n3" do |n3|
      n3.vm.hostname = "n3"
      n3.vm.network "private_network", ip: "172.20.20.13"
  end

end
