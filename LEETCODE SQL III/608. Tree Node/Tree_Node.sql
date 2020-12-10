select id,
       case
       when tree.id = (select atree.id from tree atree where p_id is null) then 'Root'
       when tree.id in (select p_id from tree atree where p_id is not null) then 'Inner'
       else 'Leaf' end as type
from tree
order by 1;

