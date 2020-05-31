# Salesforce Direct Query Terraform

 Terraform repo for SHPPD data stack example.

 Make salesforce data direct query accessible to powerbi via Heroku connect + Heroku Postgres.

-------------------------

 This is a simple implementation of what I'm calling the "SHPPT" Data Stack:

 * Salesforce
 * Heroku
 * Postgres
 * PowerBI (DirectQuery)
 * Terraform

Architectural Outline - we want to make a strongly modeled bi stack (dbt + pbi) with Salesforce as our primary data source without depending on batch scheduling and minimizing infrastructure management as much as possible via terraform.

![Architecture][image-arch]

Outcome -

![Account Map example][image]


[image-arch]: https://github.com/sgoley/shppt-stack/raw/master/resources/images/SHPPT_Data_Stack.png "Architecture Outline"
[image]: https://github.com/sgoley/shppt-stack/raw/master/resources/images/AccountMap_Page.png "Embedded PowerBI DQ report for SF"
