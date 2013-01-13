name "aerodeck_load_balancer"
description "Load balancer role"
run_list(
  "role[base]",
  "recipe[aerodeck::application]"
)
