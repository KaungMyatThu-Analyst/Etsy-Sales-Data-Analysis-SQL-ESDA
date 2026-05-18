# Etsy-Sales-Data-Analysis-SQL-ESDA
SQL project analyzing sales, customers, and product discounts for an e-commerce shop.
EasyTrackerShop Sales Data Analysis (SQL)

Project Overview
This project focuses on building a Relational Database Management System (RDBMS) for an Etsy digital template shop 
named " EasyTrackerShop" . It includes database design, data modification, and advanced SQL analysis to extract business insights
regarding revenue, customer behaviors, and country-based sales.

Tech Stack
- Database: MySQL
- Tool: MySQL Workbench

Database Schema
The database consists of 3 interrelated tables:
- products : Tracks digital products, original prices, and promotion discounts.
-  customers : Stores buyer details including location (country).
-  sales : Records transactional data linking customers and products.

Key Insights Extracted
1. Comprehensive Sales Summary : Calculated net revenue after applying product discounts.
2.  Geographical Performance : Analyzed which countries generate the highest revenue.
3.  Customer Retention : Identified VIP and returning customers using advance 'GROUP-CONCAT' and 'HAVING' claues.

How to Run the Queries
1. Run 'EasyTracker_Schema.sql' to set up the database and mock data.
2. Execute 'Analysis_Queries.sql' to view business reports.
