select Books.book_id, Books.name
from Books
left join Orders
on Books.book_id = Orders.book_id
where Books.available_from < date_sub('2019-06-23', interval 1 month)
group by Books.book_id
having sum(case when Orders.dispatch_date >= date_sub('2019-06-23', interval 1 year) then Orders.quantity else 0 end) < 10
-- group by Books.book_id
order by Books.book_id;
