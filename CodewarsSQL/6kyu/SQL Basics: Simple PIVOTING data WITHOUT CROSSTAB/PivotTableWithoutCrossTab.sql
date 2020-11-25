select p.name,
       count(case when detail='good' then detail end) as good,
       count(case when detail='ok' then detail end) as ok,
       count(case when detail='bad' then detail end) as bad
from products p, details d
where p.id = d.product_id
group by name
order by name;
       
       
