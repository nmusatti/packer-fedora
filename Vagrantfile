# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure(2) do |config|
    config.vm.define 'fedora-bare' do |fedora|
        fedora.vm.box = 'fedora-bare'
        fedora.vm.synced_folder '.', '/vagrant'
        fedora.vm.provider 'virtualbox' do |vb|
            vb.name = 'fedora-bare'
            vb.cpus = 2
            vb.memory = '1024'
        end
    end
end
