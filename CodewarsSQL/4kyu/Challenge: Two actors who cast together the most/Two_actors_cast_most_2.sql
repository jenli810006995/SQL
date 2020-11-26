select 
    concat(a1.first_name, ' ', a1.last_name) as second_actor,
    concat(a2.first_name, ' ', a2.last_name) as first_actor,
    f.title
from (
    select 
        r1.actor_id as actor_a_id, 
        r2.actor_id as actor_b_id,
        count(r1.film_id) as casted_together,
        array_agg(r1.film_id) as film_ids
    from film_actor r1 
    join film_actor r2 
        on r1.film_id = r2.film_id
        and r1.actor_id > r2.actor_id
    join film f
        on r1.film_id = f.film_id
    group by r1.actor_id, r2.actor_id
    order by casted_together desc
    limit 1
    ) s
join actor a1 on a1.actor_id = s.actor_a_id
join actor a2 on a2.actor_id = s.actor_b_id
join film f on f.film_id = any(s.film_ids)
