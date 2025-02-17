-- Inspect data file
select * from DataCoSupplyChainDataset;

-- Verify the Column Names
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DataCoSupplyChainDataset';

-- Create a temporary table and filter out 2018, ensuring temporal consistency in insights and avoiding bias from incomplete data.
SELECT * 
INTO #DataCoSupplyChain
FROM DataCoSupplyChainDataset
WHERE YEAR(order_date_DateOrders) <> 2018;


-- filter column for power BI project
SELECT 
		Days_for_shipping_real,
		Days_for_shipment_scheduled,
		Delivery_Status,
		Late_delivery_risk,
		Shipping_Mode,
		Customer_Fname,
		Customer_Id,
		Customer_Lname,
		Customer_Segment,
		Customer_State,
		FORMAT(order_date_DateOrders, 'M/d/yyyy h:mm:ss tt') AS DateOrders,
		Order_Id,
		Order_Item_Discount_Rate,
		Order_Item_Quantity,
		Sales,
		Order_Item_Total,
		Order_Profit_Per_Order,
		Order_Item_Discount,
		Order_Region,
		Category_Name,
		Product_Name,
		Product_Price
FROM #DataCoSupplyChain;


-- cleanup
DROP TABLE #DataCoSupplyChain;