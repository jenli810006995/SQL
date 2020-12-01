select count(*) as 'row number', p.id, p.name
from people p, people x
where p.name >= x.name
group by p.name, p.id
order by p.name;
