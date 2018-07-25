# NOTE This is based on https://github.com/joshfng/railsbox-packer

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
Vagrant.require_version '>= 1.5'

Vagrant.configure('2') do |config|
  name = 'phaser-yarn-vagrant'

  config.vbguest.installer_arguments = "--nox11 -- --force"
  config.ssh.forward_agent = true
  config.ssh.insert_key = false
  config.vm.box = 'debian/contrib-jessie64'
  config.vm.hostname = name
  config.vm.synced_folder './app', '/vagrant', type: 'virtualbox'
  config.vm.provider :virtualbox do |v|
    v.name = name
    v.memory = 1024
    v.cpus = 2
    v.customize [
      'modifyvm', :id,
      '--nictype1', 'virtio',
      '--name', name,
      '--natdnshostresolver1', 'on'
    ]
    v.customize [ 'guestproperty', 'set', :id, '--timesync-threshold', 5000 ]
  end
  config.vm.network 'forwarded_port', guest: 8080, host: 8080
  config.vm.provision 'shell', path: './vagrant-scripts/update.sh'
  config.vm.provision :reload
  config.vm.provision 'shell', path: './vagrant-scripts/provision.sh'
  config.vm.provision 'shell', path: './vagrant-scripts/cleanup.sh'
end
