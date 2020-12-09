select customer_id,
       name
 from Customers
 natural join
 Product
 natural join
 Orders
 group by 1, 2
 having sum(case when date_format(order_date, '%Y-%m') ='2020-06' then quantity*price end) >= 100
 and sum(case when date_format(order_date, '%Y-%m') ='2020-07' then quantity*price end) >= 100
 ;
 
 
