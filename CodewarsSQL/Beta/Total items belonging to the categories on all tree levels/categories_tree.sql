with recursive count_item as (
select c.id,
  c.parent,
  (select count(i.id) from items as i where i.category_id = c.id) as total
  from categories as c
), h as (
select id, parent, total
  from count_item
  where id not in (select parent from categories where parent is not null)
union all
  select c.id, c.parent, c.total + h.total as total
  from h
  join count_item as c on h.parent = c.id
)
select id, sum(total)::int as total
from h
group by id
order by id
