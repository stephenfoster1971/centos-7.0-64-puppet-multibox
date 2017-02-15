Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet"

  config.vm.define "web" do |web|
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.100.2"
    web.vm.provision :shell, path: "web_bootstrap.sh"
    web.vm.network :forwarded_port, guest: 80, host: 8080
  end

  config.vm.define "db" do |db|
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.100.3"
    db.vm.provision :shell, path: "db_bootstrap.sh"
    db.vm.network :forwarded_port, guest: 80, host: 8081
  end

  config.vm.define "spacewalk" do |spacewalk|
    spacewalk.vm.hostname = "spacewalk"
    spacewalk.vm.network "private_network", ip: "192.168.100.4"
    spacewalk.vm.provision :shell, path: "spacewalk_bootstrap.sh"
    spacewalk.vm.network :forwarded_port, guest: 80, host: 8082
    spacewalk.vm.network :forwarded_port, guest: 443, host: 8443
  end

end
