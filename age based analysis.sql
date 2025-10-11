SELECT *
FROM [dbo].[E-COMMERCE]
WHERE age < 0 OR age > 120;

SELECT user_id, age, country, created_at, order_id
FROM [dbo].[E-COMMERCE]
WHERE age < 13;

UPDATE [dbo].[E-COMMERCE]
SET user_id = 'MINOR_' + CAST(ROW_NUMBER() OVER (ORDER BY user_id) AS VARCHAR(10))
WHERE age < 13;

UPDATE [dbo].[E-COMMERCE]
SET country = 'Brazil'
WHERE country = 'Brasil';

WITH DuplicateCTE AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY created_at) AS rn
    FROM [dbo].[E-COMMERCE]
)
DELETE FROM DuplicateCTE
WHERE rn > 1;

--Count of Minors' Purchases:
SELECT 
    COUNT(DISTINCT order_id) AS minor_orders,
    COUNT(*) AS total_transactions
FROM [dbo].[E-COMMERCE]
WHERE age < 13;

--Minors by Country:
SELECT 
    country,
    COUNT(DISTINCT user_id) AS unique_minors,
    COUNT(DISTINCT order_id) AS minor_orders
FROM [dbo].[E-COMMERCE]
WHERE age < 13
GROUP BY country
ORDER BY minor_orders DESC;

--Age-Based Purchase Insights
WITH AgeGroups AS (
    SELECT 
        *,
        CASE 
            WHEN age < 18 THEN 'Under 18'
            WHEN age BETWEEN 18 AND 34 THEN '18-34'
            WHEN age BETWEEN 35 AND 54 THEN '35-54'
            WHEN age >= 55 THEN '55+'
            ELSE 'Unknown'
        END AS age_group
    FROM [dbo].[E-COMMERCE]
)
SELECT * INTO #Temp_AgeGroups FROM AgeGroups;

--Total Spending by Age Group:

SELECT 
    age_group,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(price * quantity) AS total_spending,
    AVG(price * quantity) AS avg_spend_per_order
FROM #Temp_AgeGroups
GROUP BY age_group
ORDER BY total_spending DESC;

--Popular Categories by Age Group:
SELECT 
    age_group,
    category,
    COUNT(DISTINCT order_id) AS order_count,
    SUM(price * quantity) AS category_spending
FROM #Temp_AgeGroups
GROUP BY age_group, category
HAVING COUNT(DISTINCT order_id) > 5 -- Filter for significant categories
ORDER BY age_group, category_spending DESC;
--Purchase Trends by Age Group Over Time:
SELECT 
    age_group,
    CAST(created_at AS DATE) AS order_date,
    COUNT(DISTINCT order_id) AS daily_orders,
    SUM(price * quantity) AS daily_spending
FROM #Temp_AgeGroups
GROUP BY age_group, CAST(created_at AS DATE)
ORDER BY age_group, order_date;

--Gender Influence Within Age Groups:
SELECT 
    age_group,
    gender,
    COUNT(DISTINCT order_id) AS gender_orders,
    SUM(price * quantity) AS gender_spending
FROM #Temp_AgeGroups
GROUP BY age_group, gender
ORDER BY age_group, gender_spending DESC;

--Create a View for Power BI:
CREATE VIEW vw_AgePurchaseAnalysis AS
SELECT 
    user_id,
    age,
    gender,
    country,
    source,
    order_id,
    quantity,
    created_at,
    product_id,
    price,
    category,
    CASE 
        WHEN age < 18 THEN 'Under 18'
        WHEN age BETWEEN 18 AND 34 THEN '18-34'
        WHEN age BETWEEN 35 AND 54 THEN '35-54'
        WHEN age >= 55 THEN '55+'
        ELSE 'Unknown'
    END AS age_group
FROM [dbo].[E-COMMERCE];

select * from vw_AgePurchaseAnalysis