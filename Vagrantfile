# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  # accessing "localhost:8080" will access port 80 on the guest machine.
   config.vm.network "forwarded_port", guest: 80, host: 8080

  #  config.vm.network "private_network", ip: "192.168.33.10"

	config.vm.provision "ansible" do |ansible|
	        ansible.verbose = "vvv"	
		ansible.playbook = "graph_gallery.yml"
		#ansible.tags = ""
		ansible.skip_tags = "install"

	end
end
