select f.title
from film f
join film_actor fa
on f.film_id = fa.film_id
and fa.actor_id in (105, 122)
group by f.film_id
having count(*) = 2
order by f.title asc;

-- sort alphabetically = order by asc
