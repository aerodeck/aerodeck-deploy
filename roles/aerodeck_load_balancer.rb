name "aerodeck_load_balancer"
description "Load balancer"
all_env = [ 
  "role[base]",
  "recipe[nginx]",
  "recipe[application]",
]

run_list(all_env)

env_run_lists(
  "_default" => all_env, 
  "prod" => all_env,
  "dev" => all_env
)
