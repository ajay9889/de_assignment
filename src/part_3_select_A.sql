use food_business_db;

Select registration_status as ACCOUNT_STATUS,
	COUNT(*) AS NUMBER_OF_ACCOUNTS
From 
	Customer 
GROUP BY 
	registration_status;


-- Sample OutPut Based Insert Data

-- ACCOUNT_STATUS	NUMBER_OF_ACCOUNTS
-- Approved			81
-- Rejected			19
-- Pending			2