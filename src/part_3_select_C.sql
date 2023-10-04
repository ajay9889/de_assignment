use food_business_db;

With purchase_bucket AS (
SELECT 
Bucket,
COUNT(customer_id) AS CustomerCount,
(COUNT(customer_id)*100)/SUM(COUNT(customer_id)) OVER() AS Percentage
FROM (
SELECT 
customer_id,
TOTAL_PURCHASES,
CASE
	WHEN  TOTAL_PURCHASES =0 Then '0 Purchase'
    WHEN  TOTAL_PURCHASES BETWEEN 1 and 5 THEN '1-5 Purchases'
    ELSE '6 or more purchases'
END AS Bucket
FROM 
(SELECT 
		C.customer_id as customer_id ,
		COUNT(P.transaction_id) AS TOTAL_PURCHASES
	FROM
		Customer AS C
			LEFT JOIN
		PurchaseTransactions AS P ON C.customer_id = P.customer_id
	GROUP BY 
	customer_id
) AS PurchaseCount) BucketCounts 
GROUP BY 
Bucket
) Select Bucket as ACCOUNT_PURCHASE_BUCKET, ROUND(Percentage) as PERCENTAGE from purchase_bucket;

    


-- Sample Output

-- ACCOUNT_PURCHASE_BUCKET	PERCENTAGE
-- 0 Purchase				39
-- 1-5 Purchases			59
-- 6 or more purchases		2


    