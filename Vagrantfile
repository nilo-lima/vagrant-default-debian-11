# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "NomeVM" do |general|
      general.vm.box = "debian/bullseye64"
      general.vm.hostname = "NomeHost.domain.local"
      ## MySQL
      general.vm.network "forwarded_port", guest: 3306, host:3306
      ## Postgres
      general.vm.network "forwarded_port", guest: 5432, host:5432
      ## Apache Hop
      general.vm.network "forwarded_port", guest: 8080, host:8080
      ## Metabase
      general.vm.network "forwarded_port", guest: 3000, host:3000
      ## Streamlit
      general.vm.network "forwarded_port", guest: 8501, host:8501
      ## Web
      general.vm.network "forwarded_port", guest: 80, host:80      
      general.vm.network "private_network", ip: "192.168.56.251"
      general.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 2
        vb.name = "NomeHost"
      end
      general.vm.provision "shell", path: "setup.sh"
    end
  end  