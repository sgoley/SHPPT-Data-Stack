# Configure the Heroku provider
provider "heroku" {
  version = "~> 2.0"
}

# Create a new application
resource "heroku_app" "db_app" {
  # use a heroku wide unique app name
  name   = "sf-dq-terraform"
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
# use heroku pg:credentials:url -a <app-name> to retrieve default credential string

resource "heroku_addon" "heroku_connect" {
  app  = "${heroku_app.db_app.name}"
  plan = "herokuconnect:demo"
}
# go to setup/connect-setup.sh to complete authentication with postgres and attach to database
