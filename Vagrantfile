Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true

  config.vm.define "job_vagrant" do |debian|
	debian.vm.box = "dodexq/debian9-job"
    debian.vm.hostname = "jobVagrant"
	debian.vm.network "private_network", ip: "192.168.56.55"
	debian.vm.provider "virtualbox" do |vb|
		vb.memory = "2048"
		vb.name = "job_vagrant"
		vb.cpus = "2"
	end
	debian.vm.provision "shell",
		inline: "sudo apt install -y sshpass && cp -rf /vagrant/ansible . && cd /home/vagrant/ansible && ansible-playbook provision.yml"
	#debian.vm.provision "ansible" do |ansible|
    #	ansible.playbook = "ansible/provision.yml"
  	
	#end
  end
end