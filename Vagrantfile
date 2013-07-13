# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"

  config.vm.box_url = "http://careers.softonic.com/precise32.box"

  # redirect port 80 to 8080
  config.vm.forward_port 80, 8080

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "vagrant_conf/puppet/manifests"
    puppet.manifest_file = "base.pp"
end
