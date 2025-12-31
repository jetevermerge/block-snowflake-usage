project_name: "block-snowflake-usage"



# The Snowflake connection as listed in the Admin panel
constant: CONNECTION_NAME {
  value: "snowflake_cost_and_usage"
  export: override_optional
}

constant: DATABASE_NAME {
  value: "SNOWFLAKE"
  export: override_optional
}
