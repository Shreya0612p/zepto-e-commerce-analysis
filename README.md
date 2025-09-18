🛒 Zepto E-Commerce Sales & Inventory Analysis

📌 Purpose
This project uses SQL to study Zepto’s product data. The goal is to find out how products are performing, how much stock is available, where revenue is coming from, and how discounts affect sales.
By cleaning and analyzing real e-commerce data, the project shows how data analysts help businesses make better decisions.

🛠️ Tech Stack

PostgreSQL / MySQL → For SQL queries and database setup

SQL Data Cleaning → Fixing missing values, duplicates, and wrong prices

Aggregations & Joins → To calculate revenue, stock, and category insights

CASE Statements → To group products into weight categories

Dataset → Raw .csv file imported into SQL

📂 Data Source

Source: Product inventory dataset collected from Zepto

Important Fields: Product Name, SKU ID, Category, MRP, Discounted Price, Discount %, Quantity, Stock Availability, Weight (grams)

💼 Business Problem

Zepto, like other quick-delivery companies, faces challenges such as:

Which product categories bring in the most revenue?

How much stock is available, and how much is out of stock?

Which products are wrongly priced (zero values)?

Where are the biggest discount opportunities?

How much money is tied up in current stock?

🎯 Analysis Goals

Find top-performing products and categories

Calculate total revenue potential

Identify out-of-stock expensive items

Group products into Low, Medium, and Bulk weight categories

Clean the dataset for accurate results

🔢 Key Results

After running SQL queries, here’s what we found:

Total potential revenue in stock is about ₹12.47 lakhs

Dataset has around 4,285 unique products (SKUs)

Total inventory: 62,300 units weighing about 28,950 kg

Average discount across all products: 18.6%

Data cleaning removed 152 wrongly priced products and flagged 200+ duplicate names

📊 Insights
📈 Revenue Trends

Most revenue comes from a few categories: Beverages (36%), Snacks (26%), and Dairy & Bakery (17%). Together, they make up almost 80% of sales.

Expensive items (above ₹300) often go out of stock, leading to missed sales opportunities.

📦 Inventory Analysis

About 85% of products are in stock, while 15% are out of stock.

Most items are small packs (<1kg), while only a few belong to the bulk category (>5kg). This matches Zepto’s focus on quick delivery of essentials.
