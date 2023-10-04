
import random
import string

# status_list = ['Rejected', 'Pending', 'Approved']
# for i in range(1, 100):
#     reg_status = random.choice(status_list)
#     status = "\'"+reg_status+"\'"
#     if(reg_status == 'Rejected'):
#         reason = '\'Incomplete information\''
#     else:
#         reason = '\'\''
#     print('INSERT INTO Customer (cust_name, Email, is_active,registration_status,reject_reason,password,mobile,gender,created_at) VALUES (\'customer' +
#           str(i)+'\',' '\'customer'+str(i)+'@example.com\' , 1 ,' + status + ',' + reason + ',' '\'024ca8e38b33f9116c151123eb432d20\', \'+6534345345\' , \'male\' , CURRENT_TIMESTAMP);')


# day_of_the_week = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'FRI']
# channels = ['Mobile', 'Website']
# for i in range(1, 100):
#     customer_id = random.randint(1, 100)
#     day_of_week = "\'"+random.choice(day_of_the_week)+"\'"
#     channel_login = "\'"+random.choice(channels)+"\'"
#     print('INSERT INTO LoginActivity (customer_id, login_channel, day_of_week , login_date) VALUES (' +
#           str(customer_id)+',' + channel_login + ',' + day_of_week + ','+' CURRENT_TIMESTAMP);')

# devices = ['Desktop', 'Android', 'iOS']
# for i in range(1, 100):
#     customer_id = i
#     device_type = "\'"+random.choice(devices)+"\'"
#     if device_type == '\'Android\'':
#         fcm_token = "\'dsfdkhfgepiruhgieubhncxmvnkvhroehroiqeujbnkfbnkbqobinoibnorjbiqhdbiqojrboirjeboklfdsldv+dvdfvvepvvt=\'"
#         os_version = '\'13\''
#     elif (device_type in '\'iOS\''):
#         fcm_token = "\'werertryrtyyfghffgkdjflsjgagjoarphkoptggdf+sdfdjngknkbqobinoibnorjbiqhdbiqojrboirjeboklfdsldv+dvdfvvepvvt=\'"
#         os_version = '\'14\''
#     else:
#         fcm_token = "\'\'"
#         os_version = '\'15572.57.0\''

#     print('INSERT INTO DeviceDetails (customer_id, fcm_token , device_type, os_version) VALUES (' +
#           str(customer_id)+',' + fcm_token + ',' + device_type + ',' + os_version+');')


# for i in range(1, 50):
#     seller_address = "\'Seller number "+str(i)+" ,Singapore\'"
#     print('INSERT INTO SellerDetails (seller_name, seller_email, seller_address, created_date) VALUES (\'Seller' +
#           str(i)+'\',' '\'seller'+str(i)+'@example.com\''+','+seller_address + ', CURRENT_TIMESTAMP);')


# for i in range(1, 50):
#     selling_price = random.uniform(10.5, 75.5)
#     avbl_quantity = random.randint(5, 70)
#     seller_id = i  # random.randint(1, 99)
#     print('INSERT INTO FoodListing (food_name, selling_price, avbl_quantity, seller_id) VALUES (\'Food' +
#           str(i)+'\','+str(round(selling_price, 2))+','+str(round(avbl_quantity, 2))+','+str(seller_id)+');')


# for i in range(1, 100):
#     purchase_qauntity = random.randint(1, 30)
#     price = random.uniform(10.5, 30.00)*purchase_qauntity
#     seller_id = random.randint(1, 50)
#     customer_id = random.randint(1, 100)
#     print('INSERT INTO PurchaseTransactions (customer_id, item_id, purchase_qauntity, price , purchase_datetime) VALUES (' +
#           str(customer_id)+','+str(seller_id)+','+str(purchase_qauntity)+','+str(round(price, 2))+' , CURRENT_TIMESTAMP);')
