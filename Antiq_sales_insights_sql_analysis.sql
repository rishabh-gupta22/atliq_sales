#To Find total number of records of valid Transactions
SELECT COUNT(*) FROM sales.transactions WHERE sales_amount > 0;

#Find valid transaction records from Chennai
SELECT * FROM sales.transactions WHERE market_code = "Mark001" AND sales_amount > 0;

#Find no of valid transaction records from Chennai
SELECT COUNT(*) FROM sales.transactions WHERE market_code = "Mark001" AND sales_amount > 0;

#Find transactions in US Currency
SELECT * FROM sales.transactions WHERE currency = 'USD';

#Find Total Transactions performed in 2020
SELECT sales.t.*, sales.d.year FROM sales.transactions t JOIN sales.date d
ON sales.t.order_date = sales.d.date WHERE sales.d.year = 2020;

#Find Total Revenue performed in 2020
SELECT SUM(sales.t.sales_amount) FROM sales.transactions t JOIN sales.date d
ON sales.t.order_date = sales.d.date WHERE sales.d.year = 2020;

#To Find total number of Cutomers
SELECT distinct COUNT(*) FROM sales.customers;

#To find list of products sold in Chennai
SELECT DISTINCT product_code FROM sales.transactions WHERE market_code = "Mark001";