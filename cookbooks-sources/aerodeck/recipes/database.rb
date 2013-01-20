include_recipe "mongodb::10gen_repo"
include_recipe "mongodb"

node.set["mongodb"]["cluster_name"] = "aerodeck"
node.set["mongodb"]["client_role"] = "aerodeck_application_server"
