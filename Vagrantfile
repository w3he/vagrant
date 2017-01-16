# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

#Guest additions are required for forwarded ports, shared folders, host only
#        networking, and more.
  config.vm.box = "centos/7"

  config.vm.define :default do |base|

    base.vm.synced_folder "../ansible", "/vagrant/ansible", type: "rsync"
    base.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
   
    base.vm.provision "shell", path: "setup.sh"
  end

  config.vm.define :webserver01 do |web|

    web.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end

end
