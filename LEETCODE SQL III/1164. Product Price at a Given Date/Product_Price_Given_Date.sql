-- create a temp table with change_date <= '2019-08-16', if null, then the change was made after '2019-08-16' then those price have to be 10

select p.product_id,
       ifnull(temp.new_price, 10) as price
 from
 (
   select *,
        dense_rank() over(partition by product_id order by change_date desc) as rnk
   from Products
   where change_date <= '2019-08-16'
 ) temp
 right join
 Products p
 on temp.product_id = p.product_id
 and temp.rnk = 1
 group by 1
 order by 2 desc;
 
 
 
 -- Link: https://leetcode.com/problems/product-price-at-a-given-date/
