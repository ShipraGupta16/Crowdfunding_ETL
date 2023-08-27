# Crowdfunding_ETL

### Introduction

This mini project is a about building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, we create four CSV files and use the CSV file data to create an ER Diagram and a table schema. Finally, uploaded the CSV file data into a Postgres database. The analysis file is ETL_Mini_Project_SGupta_Code2.ipynb mainly.

### Step-by-step instructions
The instructions for this mini project are divided into the following subsections:

Create the Category and Subcategory DataFrames
Create the Campaign DataFrame
Create the Contacts DataFrame
Create the Crowdfunding Database

### Created the Category and Subcategory DataFrames
1) Extracted and transformed the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

 - A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

 - A "category" column that contains only the category titles

2) Exported out the category DataFrame as category.csv and saved it to my GitHub repository.

3) Extracted and transformed the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

 - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

 - A "subcategory" column that contains only the subcategory titles

4) Exported out the subcategory DataFrame as subcategory.csv and saved it to my GitHub repository.



More detailed instructions:

### Created the Campaign DataFrame
1) Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

The "cf_id" column,  "contact_id" column,  "company_name" column, "blurb" column, renamed to "description", "goal" column, converted to the float data type, "pledged" column, converted to the float data type, "outcome" column, "backers_count" column, "country" column, "currency" column, "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format,  "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format, "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame, "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

2) Exported the campaign DataFrame as campaign.csv and saved it to my GitHub repository.



### Create the Contacts DataFrame
Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

#### Option 1: Use Python dictionary methods.

#### Option 2: Use regular expressions.

I did both options 1 and 2.

When I chose Option 1, I completed the following steps:

 - Imported the contacts.xlsx file into a DataFrame.
 - Iterated through the DataFrame, converting each row to a dictionary.
 - Iterated through each dictionary, doing the following:
 - Extracted the dictionary values from the keys by using a Python list comprehension.
 - Added the values for each row to a new list.
 - Created a new DataFrame that contains the extracted data.
 - Split each "name" column value into a first and last name, and placed each in a new column.
 - Cleaned and exported the DataFrame as contacts.csv and saved it to my GitHub repository.

When I chose Option 2, I did in two ways. One was using the following steps:

 - Imported the contacts.xlsx file into a DataFrame.
 - Extracted the "contact_id", "name", and "email" columns by using regular expressions.
 - Created a new DataFrame with the extracted data.
 - Converted the "contact_id" column to the integer type.
 - Split each "name" column value into a first and a last name, and placed each in a new column.
 - Cleaned and then exported the DataFrame as contacts.csv and saved it to my GitHub repository.

 Another method is using str_extract method with same regex pattern in file ETL_Mini_Project_SGupta_Code2.ipynb file.



### Create the Crowdfunding Database, related tables and keys
 - Used the four CSV files to sketch an ER Diagram of the tables by using QuickDBDLinks.

 - Used the given information from the ER Diagram to create a table schema for each CSV file.

 - Specified the data types, primary keys, foreign keys, and other constraints.

 - Saved the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

 - Created a new Postgres database, named crowdfunding_db.

 - Using the database schema, created the tables in the correct order to handle the foreign keys.

 - Verified the table creation by running a SELECT statement for each table.

 - Imported each CSV file into its corresponding SQL table.

 - Verified that each table has the correct data by running a SELECT statement for each(screenshots).






