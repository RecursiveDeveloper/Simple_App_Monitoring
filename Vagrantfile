OWNER = "vagrant"
SCRIPTS_PATH = "/opt/config"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.boot_timeout = 400
  config.vm.synced_folder "./config", SCRIPTS_PATH

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 3002, host: 3002

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 3
  end

  config.vm.provision "shell", path: "./provisioners/install_dockerEngine.sh", args: "#{OWNER}"
  config.vm.provision "shell", path: "./provisioners/deploy.sh", args: "#{SCRIPTS_PATH}"
end