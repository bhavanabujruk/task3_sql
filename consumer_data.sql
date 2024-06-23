create Table consumer(
	Date_Received DATE,
	Product_name VARCHAR (150),
	sub_product VARCHAR (100),
	issue VARCHAR (250),
	sub_ssue VARCHAR (100),
	company_date DATE,
	complaint_id SERIAl
);

copy consumer from 'D:/practice/P9-ConsumerComplaints.csv' DELIMITER ',' CSV header

select * from consumer

select product_name from consumer

select date_received, sub_product, issue from consumer

select DISTINCT company_date , complaint_id from consumer

select * from consumer where sub_product = 'Checking account'

select * from consumer where product_name = 'Bank account or service' and complaint_id=468889

select * from consumer where issue='Managing the loan or lease' or issue='Using a debit or ATM card'