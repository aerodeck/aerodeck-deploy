name "aerodeck_application_server"
description "Application server"
all_env = [ 
  "role[base]"
]

run_list(all_env)

env_run_lists(
  "_default" => all_env, 
  "prod" => all_env,
  "dev" => all_env
)
