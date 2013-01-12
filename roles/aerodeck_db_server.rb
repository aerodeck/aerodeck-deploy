name "aerodeck_db_server"
description "Database server"
all_env = [
  "role[base]",
  "recipe[mongodb::10gen_repo]",
  "recipe[mongodb]"
] 

run_list(all_env)

env_run_lists(
  "_default" => all_env,
  "prod" => all_env,
  "dev" => all_env
)

override_attributes(
  :mongodb => {
    :cluster_name => "aerodeck",
    :client_role => "aerodeck_application_server"
  }
)