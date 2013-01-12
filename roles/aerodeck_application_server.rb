name "aerodeck_application_server"
description "Application server"
all_env = [ 
  "role[base]",
  "recipe[nodejs]",
  "recipe[npm]",
  "recipe[application]"
]

run_list(all_env)

env_run_lists(
  "_default" => all_env, 
  "prod" => all_env,
  "dev" => all_env
)

override_attributes(
  :nodejs => {
    :version => "0.8.16"
  },
  :npm => {
  	:version => "1.2.0"
  }
)
