include_recipe "nginx"
include_recipe "nodejs"
include_recipe "npm"

include_recipe "application"

node.set["nodejs"]["version"] = "0.8.17"
node.set["npm"]["version"] = "1.2.0"

application "aerodeck" do
  path "/srv/aerodeck-platform"
  owner "www-data"
  group "www-data"

  repository "git://github.com/aerodeck/aerodeck-platform.git"
  revision "master"

  nginx_load_balancer do
    only_if { node['roles'].include?('aerodeck_load_balancer') }
  end
end