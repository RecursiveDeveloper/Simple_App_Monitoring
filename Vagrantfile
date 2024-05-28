OWNER = "vagrant"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.boot_timeout = 400
  config.vm.synced_folder "./config", "/opt/config"

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 3002, host: 3002

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 3
    vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
    vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
  end

  config.vm.provision "shell", 
    path: "./provisioners/install_dockerEngine.sh", args: "#{OWNER}"
  config.vm.provision "shell", 
    path: "./provisioners/install_additional_tools.sh"
  config.vm.provision "shell", inline: <<-SHELL
    apt install dos2unix -y
    find "/opt/config" -type f -name "*.sh" -print0 | xargs -0 dos2unix
    bash /opt/config/deploy.sh
  SHELL
end
