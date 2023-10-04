# API Integrations and DataModeling. 

Technical project for analysis.

# part_1_api.py

Company A’s Finance department requires historical exchange rate data for analysis.
This data is publicly available and a data source, MAS, was identified.

> src/part_1_api.py

How to run the Applications:

> Install Python by going to the official website > https://www.python.org/downloads/. 
> Verify the installation using command> python3 --version
> run the App by using command> python3 src/part_1_api.py

# Part 2: Data Modeling for Food Business

![alt text](https://github.com/ajay9889/de_assignment/blob/main/src/part_2_er.jpg)

# Create the Table
> Install MySQL WorkBench
> Create Database
> Run all DDL command which is mentioned in the file src/part_2_create.sql
> Insert required data with respect to each created table > run insert query one by one in the file src/part_2_insert.sql

# Part 3: Business Insight

A. How many accounts are pending approval, approved and rejected?
> src/part_3_select_A.sql
B. What are the total logins and purchases for each account?
> src/part_3_select_B.sql
C. How many accounts have purchases by the following buckets? In percentage.
> src/part_3_select_C.sql
D. What is the third most purchased item in terms of quantity?
> src/part_3_select_D.sql
E. Which day (Mon - Sun) have the highest logins? If there are draws, to provide all.
> src/part_3_select_E.sql