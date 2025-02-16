# Project Title: Tracking Trends in Supply Chain –  A Sales and Profit Review (2015-2017) 

## Table of Contents (Optional)
- [Overview](#overview)
- [Dataset](#dataset)
- [Objective](#objective)
- [Analysis Approach](#analysis-approach)
- [Key Findings](#key-findings)
- [How to Use](#how-to-use)
- [Technologies Used](#technologies-used)
- [Results & Visualizations](#results--visualizations)
- [Contributing](#contributing)
- [Contact](#contact)

## Overview: 

This report analyzes supply chain performance from 2015 to 2017 using key metrics such as sales, profit, quantity sold, and customer behavior, based on the DataCoSupplyChainDataset. The 2018 data was excluded to ensure temporal consistency and avoid bias from incomplete records.

Understanding supply chain performance is crucial for identifying inefficiencies, optimizing inventory management, and improving profitability. By analyzing trends in sales, customer retention, and product demand, businesses can make data-driven decisions to enhance operational efficiency and meet customer expectations.

Key findings indicate a decline in sales and quantity sold in 2017, while profit remained relatively stable. The report investigates potential causes, including shifts in product mix, customer retention, and sales trends. Based on these insights, recommendations focus on improving customer engagement, optimizing product strategy, and enhancing demand forecasting.

## Dataset

The analysis is based on the DataCoSupplyChainDataset, obtained from Kaggle:

🔗 DataCo Smart Supply Chain Dataset
- Source: Kaggle
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

2. Data Exploration and Visualization

Using Power BI, key supply chain metrics such as sales, profit, quantity sold, and customer behavior were analyzed. Several visualizations were created, including line charts, bar graphs, and pie charts, to illustrate trends over time and highlight any anomalies in the data.

3. Metric Calculation Using DAX

Relevant metrics, such as year-over-year sales growth, customer retention rates, and average profit per order, were calculated using DAX (Data Analysis Expressions) to gain deeper insights. These metrics provided a clearer understanding of trends and helped identify areas for improvement in the supply chain.

4. Interpretation and Insights

The results were interpreted to uncover key insights, such as the decline in sales and stable profit margins in 2017, as well as the potential causes for lower repeat purchase rates.

5. Recommendations

Based on the analysis, recommendations were provided to optimize the supply chain strategy, focusing on improving customer engagement, refining product offerings, and enhancing demand forecasting.

## Key Findings
-	Declining Sales and Quantity: Sales and quantity sold saw a consistent decline, especially in 2017. This drop in quantity was most pronounced in the second half of the year.
-	Stable Profit Despite Decreases: Profit remained relatively stable, despite declining sales and quantity sold. This suggests that higher-margin, higher-priced products, which contributed to a shift in the product mix, helped offset the impact of lower sales volume.
-	Decreased Repeat Purchase Rate: Customer retention appears to be a significant concern, as the repeat purchase rate dropped drastically in the latter half of 2017, despite an increase in the number of orders.
-	Effect of Discounts: Although discounts slightly increased profit impact in 2016, the overall trend suggests that discounting may have led to lower profit margins. However, the 2017 data indicates that discount strategies were not a major factor in maintaining profitability.
-	Product Mix Shift: The company shifted towards selling higher-priced, lower-quantity products in 2017. This shift may have insulated profits from the impact of declining quantity sold but raises concerns about customer purchase behaviour and retention.

## How to use



---
### Key Insights from 2016 vs. 2015

When comparing 2016 to 2015, the following trends were observed:

- Sales: Decreased by 0.3%
- Quantity: Decreased by 0.8%
- Profit: Decreased by 0.7%
- Orders: Decreased by 0.2%
- Discount Impact Profit: Increased by +0.2%
- Total Discount: Decreased by -0.3%
- Repeat Purchase Rate: Increased by +1%

=> The Discount Impact Profit is slightly higher in 2016, suggesting that discounts had a slightly more effect on profits, indicates that the company’s discounting strategy led to lower profit margins.

### Key Insights from 2017 vs. 2016

When comparing 2017 to 2016, the following trends were observed:

- Sales: Decreased by -4%
- Quantity: Decreased by -22.7%
- Profit: Decreased by -0.5%
- Orders: Increased by +4.8%
- Discount Impact Profit: Decreased by -1.9%
- Total Discount: Decreased by -4%
- Repeat Purchase Rate: Decreased by -12.4%

Despite the decrease in sales, quantity, and repeat purchase rates, profit did not change much in 2017, decreasing by only -0.5%. This is unusual since lower sales and repeat customers typically impact profits. it's weird,so let's explore more on sales and profit trend

## Analysis of 2017's Sales and Profit Trends

Upon closer inspection of sales trends, there was a significant drop in sales from October to December 2017 compared to the same period in 2016. Specifically:
- From October 2017, sales were reduced to half of 2016’s sales.
- Total quantity sold in 2017 from September to December was only 1/3 of 2016’s.
- Weekly Sales Trend (2017): From week 40 to week 53 in 2017, sales fluctuated, showing:

  Week 40: A sudden decrease.

  Week 43: A sharp peak, which was higher than any other week of all the year.

  Weeks 44-53: Sales dropped again, but remained fluctuating.

- Profit and Orders Trends: Despite the drop in sales and quantity, the total number of orders increased by around 18% each month from September to December 2017, which raises questions about what caused the increase in orders without impacting profit significantly.

Moreover, profit by customer segment remained relatively stable year-over-year, which is unusual given the other declines.

## Potential Causes for Trends in 2017:
1. Price and Discount Impact
- Product Price Trends: There were no price changes across the years.
- Discount Rates: The average discount remained relatively stable (around 0.1) across all years, with no significant impact on the discount trend.

=> Findings: Price and discount rate don’t seem to be the main factors causing these anomalies.

2. Customer Performance
- Quantity Sold per Customer Segment: All customer segments saw a decrease in quantity sold in 2017.
- Repeat Purchase Rate: From September to December 2017, the repeat purchase rate plummeted from 10% to 0.44%, with no return customers in November and December.
- Customer Segments: All segments experienced a drop in repeat purchase rate, indicating a potential issue with customer retention.

=> Possible Question: Is the company failing to retain customers? If so, why is the profit stable despite lower repeat purchases?

3. Product Performance

Sales and Quantity Trends by Product:
- Products that had high sales in 2015 and 2016 experienced a decline in 2017.
- New products were more popular in 2017, especially products like Dell laptops (computers) and web cameras (cameras).
- These new products had higher prices, but the quantity sold was lower, indicating that customers were purchasing fewer, higher-priced items.

=> Findings: In 2017, the product mix shifted toward newer, higher-priced products, which explains the lower quantity sold but potentially stable profits from these high-priced items.

## Customer Retention Strategies
It’s possible that the company focused more on acquiring new customers rather than retaining existing ones. This could explain:
- The decrease in repeat purchase rates across customer segments.
- The increase in orders in late 2017 despite lower repeat purchases.

=> Should the company focus on customer retention programs? Or is the strategy to focus on new customer acquisition, especially with the introduction of new high-priced products?

 ### Conclusion and Next Steps
- Key Insights: The company experienced a shift in product mix toward new, higher-priced items in 2017, which led to lower quantity sold but stable profit. This is complemented by increased order volume, likely due to an emphasis on new customer acquisition.
- Further Investigation Needed:

 + Customer retention programs: Explore whether the company failed to maintain repeat customers and whether focusing on customer loyalty could help stabilize sales and profit trends.

 + Market strategy shift: Investigate if the company’s strategy in 2017 shifted toward more premium, higher-priced products and what the impact of this strategy was on profit and quantity sold.
 + Operational changes: Check if there were any operational or supply chain changes that impacted the ability to fulfill orders and maintain consistent product availability in 2017.

## Contact: 
📌 Prepared by: Phan Chenh

📅 Date: [Insert Date]

📂 Dataset: DataCoSupplyChainDataset (Kaggle)

🔍 Tools Used: SQL, Power BI
