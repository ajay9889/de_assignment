
"""
# Write SQL create statements to create the designed data model
Food Buisiness will be the sutiable snowflake schema design. 
"""
'''Create Customer Table'''

CREATE TABLE Customer(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    cust_name VARCHAR (50) NOT NULL,
    email VARCHAR (255) NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT 0,
    is_approve BOOLEAN NOT NULL DEFAULT 0,
    reject_reason VARCHAR (255) NOT NULL,
    password VARCHAR(250),
    mobile VARCHAR(15),
    gender VARCHAR(10),
    created_at DATE
);

'''Create LoginActivity Table'''
CREATE TABLE LoginActivity(
    login_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    login_channel VARCHAR(50), --mobile/Web
    login_date DATETIME,
    Foreign KEY (customer_id) REFERENCES Customer(customer_id)
);

'''Create DeviceDetails Table'''

CREATE TABLE DeviceDetails(
    device_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    fcm_token VARCHAR(255),
    device_type VARCHAR(50),
    os_version VARCHAR(10),
    Foreign KEY (customer_id) REFERENCES Customer(customer_id)
);

'''Create SellerDetails Table'''

CREATE TABLE SellerDetails(
    seller_id INT AUTO_INCREMENT PRIMARY KEY,
    seller_address VARCHAR(255) NOT NULL,
    created_date DATETIME
);

'''Create FoodListing Table'''
CREATE TABLE FoodListing(
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(255) NOT NULL,
    selling_price DECIMAL(10, 2) NOT NULL,
    avbl_quantity VARCHAR(255) NOT NULL,
    seller_id INT
    Foreign KEY (seller_id) REFERENCES SellerDetails(seller_id)
);

'''Create PurchaseTransactions Table'''
CREATE TABLE PurchaseTransactions(
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    item_id INT,
    purchase_datetime DATETIME,
    Foreign KEY (customer_id) REFERENCES Customer(customer_id),
    Foreign KEY (item_id) REFERENCES FoodListing(item_id)
    );
