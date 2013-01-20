application "aerodeck" do
  path "/srv/aerodeck-platform"
  owner "www-data"
  group "www-data"

  repository "git://github.com/aerodeck/aerodeck-platform.git"
  revision "master"

  force node.chef_environment == "development" ? true : false

  nodejs do
    only_if { node['roles'].include?('aerodeck_application_server') }
  end

  nginx_load_balancer do
    only_if { node['roles'].include?('aerodeck_load_balancer') }
  end
end