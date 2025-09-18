🛒 Zepto E-Commerce Sales & Inventory Analysis

📌 Purpose
This SQL-based project analyzes Zepto’s messy e-commerce dataset to uncover product performance, inventory patterns, revenue potential, and discount strategies.
By cleaning and exploring real retail data, the project simulates how analysts at quick-commerce companies work behind the scenes to optimize business outcomes.

🛠️ Tech Stack

PostgreSQL / MySQL – For SQL queries and database setup

SQL Data Cleaning – Removing duplicates, fixing missing values, handling zero pricing

Aggregations & Joins – For revenue, stock, and category-level analysis

Conditional Logic – Product segmentation using CASE statements

Dataset Format – Raw .csv imported into SQL

📂 Data Source

Source: Scraped product inventory dataset from Zepto

Key Fields: Product Name, SKU ID, Category, MRP, Discounted Price, Discount %, Quantity, Out-of-Stock Flag, Weight (grams)

💼 Business Problem

Quick-commerce platforms like Zepto must solve several key challenges:

Which product categories generate the most revenue?

How much stock is in inventory vs. out-of-stock?

Which items are mispriced (zero MRP/price)?

Where are the biggest discount opportunities?

How much revenue potential is tied up in current stock?

🎯 Analysis Goals

Identify top-performing categories and products

Calculate potential revenue across categories

Highlight high-MRP products that are out of stock

Segment products into Low, Medium, and Bulk by weight

Perform data cleaning for accurate reporting

🔢 Key Results

Using SQL queries, the dataset was cleaned and analyzed:

The total potential revenue in inventory is approximately ₹12.47 lakhs.

The dataset contains around 4,285 SKUs across multiple categories.

Inventory holds about 62,300 units, with a combined weight of nearly 28,950 kg.

The average discount offered across products is 18.6%.

Data cleaning removed 152 products with zero pricing values, and flagged over 200 duplicate product names.

📊 Walkthrough of Insights
📈 Revenue Trends

Revenue is dominated by a few categories: Beverages (~36%), Snacks (~26%), and Dairy & Bakery (~17%), together contributing nearly 80% of the total.
High-value items priced above ₹300 were often found out of stock, signaling missed sales opportunities.

📦 Inventory Analysis

Around 85% of products are in stock, while 15% are out of stock.
Weight-based segmentation showed that most products fall into the Low (<1kg) category, while only a small fraction belong to Bulk (>5kg), reflecting Zepto’s focus on fast-moving essentials.
