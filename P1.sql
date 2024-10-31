create database RetailSalesData;
use RetailSalesData;

Create Table Sales_Data_transactions(
customer_id varchar(255),
trans_date varchar(255),
tran_amount int);

Create Table Sales_Data_response(
customer_id varchar(255) primary key,
response int);

drop table Sales_Data_transactions

Load data infile 'C:/Program Files/MySQL/MySQL Server 8.3/Retail_Data_Transactions.csv'
into table Sales_Data_transactions
Fields terminated by ','
lines terminated by '\n'
ignore 1 rows,

select * from Sales_Data_transactions limit 10;
explain select * from Sales_Data_transactions where customer_id = 'CS1850';

create index idx_id on Sales_Data_transactions(customer_id);

explain select * from Sales_Data_transactions where customer_id = 'CS1850';

