use food_business_db;

Select registration_status,
	COUNT(*) AS NUMBER_OF_ACCOUNTS
From 
	Customer 
GROUP BY 
	registration_status;

