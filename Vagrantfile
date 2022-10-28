Vagrant.configure("2") do |config|

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
    config.vm.boot_timeout = 600
    config.vm.provision "shell", path: "script.sh"
  end

  config.vm.define :servidorconsul do |servidorconsul|
    servidorconsul.vm.box = "bento/ubuntu-20.04"
    servidorconsul.vm.network :private_network, ip: "192.168.80.2"
    servidorconsul.vm.hostname = "servidorconsul"
  end

  config.vm.define :servidorproxy do |servidorproxy|
    servidorproxy.vm.box = "bento/ubuntu-20.04"
    servidorproxy.vm.network :private_network, ip: "192.168.80.3"
    servidorproxy.vm.hostname = "servidorproxy"
    servidorproxy.vm.provision "shell", path: "haproxy.sh"
    servidorproxy.vm.provision "shell", path: "node.sh"
  end

  config.vm.synced_folder ".", "/var/www"
end
