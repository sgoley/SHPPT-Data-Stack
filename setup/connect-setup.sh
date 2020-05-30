#!/usr/bin/env bash

# install heroku connect plugin
heroku plugins:install heroku-connect-plugin

# setup hc <-> db connection
heroku connect:db:set --schema salesforce --db DATABASE_URL -a sf-dq-terraform
# setting database parameters... done
# db_key:      DATABASE_URL
# schema_name: salesforce

# setup hc <-> sf connection
heroku connect:sf:auth -a sf-dq-terraform
#fetching authorizing URL... done
#If your browser doesn't open, please copy the following URL to proceed:
#https://connect-2-virginia.heroku.com/oauth/start/<really long token here>
#waiting for authorization... done

# authentication complete - mappings next!
