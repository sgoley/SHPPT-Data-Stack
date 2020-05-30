
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
