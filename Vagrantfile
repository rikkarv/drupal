Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-20.04"
    config.vm.boot_timeout = 600
    config.vm.network "forwarded_port", guest: 80, host: 8888
    config.vm.network "forwarded_port", guest: 443, host: 443
    config.vm.network "forwarded_port", guest: 3306, host: 3360
    config.vm.provision "shell", path: "bootstrap.sh"
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "sync/", "/var/www/html", :mount_options => ["dmode=777", "fmode=777"]
    # Disable VM log
    config.vm.provider "virtualbox" do |vb|
        vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
    end
end
