use food_business_db;

SELECT 
    C.email as EMAIL,
    COUNT(L.login_id) AS TOTAL_LOGINS,
    COUNT(P.transaction_id) AS TOTAL_PURCHASES
FROM
    Customer AS C
        LEFT JOIN
    LoginActivity AS L ON C.customer_id = L.customer_id
        LEFT JOIN
    PurchaseTransactions AS P ON L.customer_id = P.customer_id
GROUP BY C.email ORDER By TOTAL_LOGINS DESC;


-- Sample Output

-- EMAIL	TOTAL_LOGINS	TOTAL_PURCHASES
-- customer7@example.com	28	28
-- customer3@example.com	20	11
-- customer2@example.com	17	17
-- customer1@example.com	15	15
-- customer6@example.com	13	0
-- customer8@example.com	8	8
-- customer9@example.com	7	0
-- customer4@example.com	6	0
-- customer5@example.com	6	6
-- customer30@example.com	2	2
-- customer22@example.com	1	1
-- customer12@example.com	1	0
-- customer17@example.com	1	0
-- customer14@example.com	0	0
-- customer15@example.com	0	0
-- customer16@example.com	0	0
-- customer13@example.com	0	0
-- customer18@example.com	0	0