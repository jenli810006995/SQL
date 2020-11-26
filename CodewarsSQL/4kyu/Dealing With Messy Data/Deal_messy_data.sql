create extension pg_trgm;

create index prospects_idx on prospects using gin(full_name gin_trgm_ops);

select c.first_name,
       c.last_name,
       c.credit_limit as old_limit,
       max(p.credit_limit) as new_limit
from customers c, prospects p
where p.full_name ilike '%' || c.first_name || '%'
and p.full_name ilike '%' || c.last_name || '%'
and p.credit_limit > c.credit_limit
group by c.first_name, c.last_name, c.credit_limit
order by first_name;

