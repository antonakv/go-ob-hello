Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"
  config.vm.box = "aakulov/bionic64"
  config.vm.provision "shell", path: "scripts/go.sh"
end
