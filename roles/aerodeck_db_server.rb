name "aerodeck_db_server"
description "Database server role"
run_list(
  "role[base]",
  "recipe[aerodeck::database]"
)
