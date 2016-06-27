Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-puppet-enterprise"
  config.vm.hostname = "puppet"
  config.vm.network :private_network, ip: "192.168.0.42"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "1024",
    ]
  end
end
