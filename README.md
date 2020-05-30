# Salesforce Direct Query Terraform

 Terraform repo for SHPPD data stack example.

 Make salesforce data direct query accessible to powerbi via Heroku connect + Heroku Postgres.

-------------------------

 This is a quick and dirty implementation of the SHPPT Data stack:

 * Salesforce
 * Heroku
 * Postgres
 * PowerBI (DirectQuery)
 * Terraform

 General outline - we want to make a strongly modeled bi stack with Salesforce as a primary data source depending on batch scheduling.

![Account Map example][image]

[image]: "https://github.com/sgoley/sf_dq_terraform/raw/master/resources/images/AccountMap_Page.png" "Embedded PowerBI DQ report for SF"