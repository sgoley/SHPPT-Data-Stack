
# opened issue for postgres provider to use url / uri on postgres: https://github.com/terraform-providers/terraform-provider-postgresql/issues/143
# when ready - substitue for value "${heroku_app.db_app.all_config_vars.DATABASE_URL}"

variable pg_host {}
variable pg_database {}
variable pg_username {}
variable pg_password {}

provider "postgresql" {
  host            = var.pg_host
  database        = var.pg_database
  username        = var.pg_username
  password        = var.pg_password
  port            = 5432
  sslmode         = "require"
  connect_timeout = 15
}

resource "postgresql_extension" "ext_uuid" {
  name = "uuid-ossp"
}
