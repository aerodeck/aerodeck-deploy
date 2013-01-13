name "aerodeck_application_server"
description "Application server role"
run_list(
  "role[base]",
  "recipe[aerodeck::application]"
)
