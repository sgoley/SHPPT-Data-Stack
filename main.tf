# Configure the Heroku provider
provider "heroku" {}

# Create a new application
resource "heroku_app" "db_app" {
  name   = "my-db-app"
  region = "us"

  config_vars = {
    salesforce_org_id = "00D5w000002s644"
  }

  buildpacks = [
    "heroku/nodejs"
  ]
}

resource "heroku_addon" "database" {
  app  = "${heroku_app.db_app.name}"
  plan = "heroku-postgresql:hobby-basic"
}

resource "heroku_addon" "heroku_connect" {
  app  = "${heroku_app.db_app.name}"
  plan = "herokuconnect:demo"
}
