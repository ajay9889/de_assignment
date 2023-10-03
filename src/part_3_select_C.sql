SELECT 
    C.email,
    COUNT(L.login_id) AS TOTAL_LOGINS,
    COUNT(P.transaction_id) AS TOTAL_PURCHASES
FROM
    Customer AS C
        LEFT JOIN
    LoginActivity AS L ON C.customer_id = L.customer_id
        LEFT JOIN
    PurchaseTransactions AS P ON L.customer_id = P.customer_id
GROUP BY C.email;