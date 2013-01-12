name "aerodeck_db_server"
description "Database server"

all_env = [
  "role[base]"
] 

run_list(all_env)

env_run_lists(
  "_default" => all_env,
  "prod" => all_env,
  "dev" => all_env
)