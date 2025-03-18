
-- Find total sales by product category
SELECT ProductCategory, SUM(SaleAmount) AS Total_Sales FROM market_data GROUP BY ProductCategory;

-- Find top 3 regions by total sales
SELECT CustomerRegion, SUM(SaleAmount) AS Total_Sales FROM market_data 
GROUP BY CustomerRegion ORDER BY Total_Sales DESC LIMIT 3;

-- Find daily sales trends
SELECT TransactionDate, SUM(SaleAmount) AS Daily_Sales FROM market_data GROUP BY TransactionDate ORDER BY TransactionDate;

-- Find best-selling product category in each region
SELECT CustomerRegion, ProductCategory, SUM(SaleAmount) AS Total_Sales FROM market_data 
GROUP BY CustomerRegion, ProductCategory ORDER BY CustomerRegion, Total_Sales DESC;
