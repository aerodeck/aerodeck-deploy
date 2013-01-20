name "base"
description "Base role applied to all nodes"
run_list(
  "recipe[sudo]",
  "recipe[apt]",
  "recipe[git]",
  "recipe[build-essential]",
  "recipe[vim]"
) 

override_attributes(
  :authorization => {
    :sudo => {
      :users => ["vagrant"],
      :passwordless => true
    }
  }
)
