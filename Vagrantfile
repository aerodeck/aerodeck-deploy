require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  config.vm.share_folder 'aerodeck-platform-dev', '/srv/aerodeck-platform-dev/current', 'aerodeck-platform'
  config.vm.customize ['setextradata', :id, 'VBoxInternal2/SharedFoldersEnableSymlinksCreate/aerodeck-platform-dev', '1']
  config.vm.forward_port 80, 8000
  config.vm.forward_port 27017, 8001

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = 'roles'
    chef.cookbooks_path = 'cookbooks'
    chef.data_bags_path = 'data_bags'
    
    chef.add_recipe('chef-solo-search')
    chef.add_role('aerodeck_database_server')
    chef.add_role('aerodeck_application_server')
    chef.add_role('aerodeck_load_balancer')
  end
end
