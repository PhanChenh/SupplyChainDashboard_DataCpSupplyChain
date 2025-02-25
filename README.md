# Project Title: Tracking Trends in Supply Chain –  A Sales and Profit Review (2015-2017) 

## Table of Contents
- [Overview](#overview)
- [Dataset](#dataset)
- [Objective](#objective)
- [Analysis Approach](#analysis-approach)
- [Key Findings](#key-findings)
- [How to run code](#how-to-run-code)
- [Technologies Used](#technologies-used)
- [Results & Visualizations](#results--visualizations)
- [Recommendation](#recommendation)
- [Contact](#contact)

## Overview: 

This report analyzes supply chain performance from 2015 to 2017 using key metrics such as sales, profit, quantity sold, and customer behavior, based on the DataCoSupplyChainDataset. The 2018 data was excluded to ensure temporal consistency and avoid bias from incomplete records.

Understanding supply chain performance is crucial for identifying inefficiencies, optimizing inventory management, and improving profitability. By analyzing trends in sales, customer retention, and product demand, businesses can make data-driven decisions to enhance operational efficiency and meet customer expectations.

Key findings indicate a decline in sales and quantity sold in 2017, while profit remained relatively stable. The report investigates potential causes, including shifts in product mix, customer retention, and sales trends. Based on these insights, recommendations focus on improving customer engagement, optimizing product strategy, and enhancing demand forecasting.

## Dataset

The analysis is based on the DataCoSupplyChainDataset, obtained from Kaggle:

🔗 DataCo Smart Supply Chain Dataset
- Source: [Kaggle](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis/code)
- Time Period Covered: 2015–2017 (2018 data excluded for consistency)
- Number of Records: 178396 rows
- Number of Features: 22 
- Key Variables:

  + Sales & Profitability: Sales, Sales_per_customer, Order_Item_Profit_Ratio, Order_Item_Discount, Order_Item_Discount_Rate, Order_Profit_Per_Order
  + Customer Information: Customer_Id, Customer_Segment, Customer_State
  + Order Details: Order_Id, Order Date, Order_Region, Order_Item_Quantity
  + Product Information: Category_Id, ProductN_ame, Product_Price
  + Shipping & Delivery Performance: Days_for_shipping_real, Days_for_shipment_scheduled, Delivery_Status, Late_delivery_risk, Shipping_Mode

This dataset provides comprehensive supply chain data, enabling analysis of sales trends, customer behavior, and product performance. The 2018 data was excluded to ensure temporal consistency and avoid bias from incomplete records.

## Objective

This analysis aims to understand year-over-year changes in key supply chain metrics, focusing on trends and anomalies. Specifically, it investigates the phenomenon of declining sales alongside stable profits and explores potential causes for the decreasing repeat purchase rates. Additionally, the analysis provides data-driven recommendations for improving profitability and enhancing customer retention strategies.

## Analysis Approach
1. Data Preparation

The dataset from the DataCoSupplyChainDataset was filtered to exclude data from 2018, as it was found to be inconsistent and would introduce bias into the analysis. This step ensured temporal consistency across the years 2015–2017.

2. Data Modeling & ERD:

Relationships between tables were established, creating a clear structure to link tables together as seen in [supplychain_ERD](supplychain_ERD.png)

3. Data Exploration and Visualization

Using Power BI, key supply chain metrics such as sales, profit, quantity sold, and customer behavior were analyzed. Several visualizations were created, including line charts, bar graphs, and pie charts, to illustrate trends over time and highlight any anomalies in the data.

4. Metric Calculation Using DAX

Relevant metrics, such as year-over-year sales growth, customer retention rates, and average profit per order, were calculated using DAX (Data Analysis Expressions) to gain deeper insights. These metrics provided a clearer understanding of trends and helped identify areas for improvement in the supply chain.

5. Interpretation and Insights

The results were interpreted to uncover key insights, such as the decline in sales and stable profit margins in 2017, as well as the potential causes for lower repeat purchase rates.

6. Recommendations

Based on the analysis, recommendations were provided to optimize the supply chain strategy, focusing on improving customer engagement, refining product offerings, and enhancing demand forecasting.

## Key Findings
-	Declining Sales and Quantity: Sales and quantity sold saw a consistent decline, especially in 2017. This drop in quantity was most pronounced in the second half of the year.
-	Stable Profit Despite Decreases: Profit remained relatively stable, despite declining sales and quantity sold. This suggests that higher-margin, higher-priced products, which contributed to a shift in the product mix, helped offset the impact of lower sales volume.
-	Decreased Repeat Purchase Rate: Customer retention appears to be a significant concern, as the repeat purchase rate dropped drastically in the latter half of 2017, despite an increase in the number of orders.
-	Effect of Discounts: Although discounts slightly increased profit impact in 2016, the overall trend suggests that discounting may have led to lower profit margins. However, the 2017 data indicates that discount strategies were not a major factor in maintaining profitability.
-	Product Mix Shift: The company shifted towards selling higher-priced, lower-quantity products in 2017. This shift may have insulated profits from the impact of declining quantity sold but raises concerns about customer purchase behaviour and retention.

## How to run code
1. SQL Code for Data Filtering

The following SQL query filters out 2018 data:

```sql
-- Create a temporary table and filter out 2018, ensuring temporal consistency in insights and avoiding bias from incomplete data.
SELECT * 
INTO #DataCoSupplyChain
FROM DataCoSupplyChainDataset
WHERE YEAR(order_date_DateOrders) <> 2018;
```
2. Save the filtering data
3. Loading the dashboard (pbix file) in Power BI
- Open Power BI Desktop and go to File > Open to load the existing dashboard ([my_dashboard.pbix](suppychainPI_Dashboard.pbix)) from the repository.

## Technologies Used
- SQL code: Excluded 2018 data to ensure consistency and avoid bias due to incomplete records.
- Power BI: Used for data visualization and report creation. Various charts, graphs, and slicers were implemented to analyze key supply chain metrics.
- DAX (Data Analysis Expressions): Used to calculate important metrics like sales growth, customer retention, and profit margins.

## Results & Visualizations

Interactive Dashboard: [SupplyChain_Dashboard](https://app.powerbi.com/view?r=eyJrIjoiZmQ0MGUyMTgtMjUxNy00NDAxLThmMDYtZTU0YTk3ZjY4ZTRlIiwidCI6IjFkYTAyNjFjLTQ1ZjktNGI5MS04N2JiLTlkMGUzNzJlMmYwNiJ9)

![Screenshot 2025-02-22 155650](https://github.com/user-attachments/assets/782a2a04-6cd7-4d86-92f5-aac293786272)

Figure 1: Sales and profit performance

Findings: 
- October-December 2017 sales dropped significantly, with October sales reaching only half of 2016 levels.
- Total quantity sold in Sep-Dec 2017 was just 1/3 of 2016.
- Profit and Orders Trends: Despite the drop in sales and quantity, the total number of orders increased by around 18% each month from September to December 2017, which raises questions about what caused the increase in orders without impacting profit significantly.
- Profit by customer segment remained relatively stable year-over-year, which is unusual given the other declines.

![Screenshot 2025-02-22 155738](https://github.com/user-attachments/assets/0eaf5bad-a69f-44c3-9532-f819eff7a395)


Figure 2: Discount and price performance 

Findings: Price and discount rate don’t seem to be the main factors causing these anomalies.

![Screenshot 2025-02-22 155754](https://github.com/user-attachments/assets/2f6dd886-536d-4218-8011-8e475494e778)


Figure 3: Customer performance 

Possible Question: Is the company failing to retain customers? If so, why is the profit stable despite lower repeat purchases? 

![Screenshot 2025-02-22 155806](https://github.com/user-attachments/assets/a980b160-b7c1-433f-ae42-5827a372ec14)


Figure 4: Product performance 

Findings: In 2017, the product mix shifted toward newer, higher-priced products, which explains the lower quantity sold but potentially stable profits from these high-priced items. 

## Recommendation

1. Improve Customer Retention

Address the decline in repeat purchases (Sep–Dec 2017) by implementing loyalty programs, personalized marketing, and follow-up offers.

2. Optimize Product Mix

Balance higher-priced products with mid-range options to maintain profit margins while boosting sales volume.

3. Refine Discount Strategies

Use data-driven discounts based on customer segments, product performance, and time-sensitive promotions to protect margins.

5. Analyze Seasonal Trends

Investigate external factors (e.g., marketing, economy, competitors) affecting sales drops (Oct–Dec 2017) and adjust strategies accordingly.

## Contact

📧 Email: phanchenh99@gmail.com

🔗 [LinkedIn](https://www.linkedin.com/in/phan-chenh-6a7ba127a/) | Portfolio
