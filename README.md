# Crowdfunding_ETL

## The purpose of this project was to extract data from a CSV of data on crowdfunding projects across the world. 

# Extract 

The following four DataFrames, with designated columns, were created:

- Category DataFrame
  - category_id
  - category

- Subcategory DataFrame
  - subcategory_id
  - subcategory

- Campaign DataFrame
  - cf_id
  - contact_id
  - company_name
  - description
  - goal
  - pledged
  - outcome
  - backers_count
  - country
  - currency
  - launch_date
  - end_date
  - category_id
  - subcategory_id

- Contacts DataFrame
  - contact_id
  - first_name
  - last_name
  - email
 
  # Transform

  Data was cleaned to remove unneeded values and change data types into appropriate and needed ones.

  # Load

  The ERD Editor extension was used in VS Code to develop the Entity Relationship Diagram for our datasets, thereby helping create our database schema (screenshot below).

  ![db_schema_erd](https://github.com/QbicleTKG/Crowdfunding_ETL/assets/139186713/66f5b9c0-a3a8-443f-9849-fc0a3b98ef2d)

  After developing the schema, the tables were created in PostgreSQL, via PGAdmin.

  Once data was imported from the CSVs we created during the data transformation step of the project, I ran a ```SELECT *``` query to test if the data had properly been imported. Those screenshots to show successful querying can be found below.

![select_all_campaign_query](https://github.com/QbicleTKG/Crowdfunding_ETL/assets/139186713/c93f10cc-9220-4bed-97df-86a51b5ef5e5)
![select_all_category_campaign](https://github.com/QbicleTKG/Crowdfunding_ETL/assets/139186713/a001d09d-3de2-4bbe-9ca6-ae58b005babb)
![select_all_contacts_query](https://github.com/QbicleTKG/Crowdfunding_ETL/assets/139186713/07309775-f59f-4606-8c40-a1a8e0b2d52c)
![select_all_subcategory_query](https://github.com/QbicleTKG/Crowdfunding_ETL/assets/139186713/03e2d177-6714-40b6-bf9a-6578799d50e9)


  
