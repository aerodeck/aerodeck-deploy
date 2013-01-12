Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.forward_port 80, 8080
  config.vm.forward_port 27017, 8081

   config.vm.provision :chef_solo do |chef|
   	chef.json.merge({
      :chef_environment => "dev"
    })

    chef.roles_path = "roles"
    chef.add_role("aerodeck_load_balancer")
    chef.add_role("aerodeck_application_server")
    chef.add_role("aerodeck_db_server")
  end
end
