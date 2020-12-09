select distinct title
from Content c
inner join TVProgram t
on c.content_id = t.content_id
and date_format(t.program_date, '%Y-%m') = '2020-06'
and Kids_content = 'Y'
and content_type = 'Movies'
;


