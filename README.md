# Salesforce Direct Query Terraform

 Terraform repo for SHPPD data stack example.

 Make salesforce data direct query accessible to powerbi via Heroku connect + Heroku Postgres.

-------------------------

 This is a quick and dirty implementation of the SHPPD Data stack:

 * Salesforce
 * Heroku
 * Postgres
 * PowerBI (DirectQuery)
 * Datalinks / DBT

 General outline - we want to make a strongly modeled bi stack with Salesforce as a primary data source depending on batch scheduling.
