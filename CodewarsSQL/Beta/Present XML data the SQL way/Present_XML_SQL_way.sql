select
  (xpath('/user/first_name/text()', data))[1]::text as first_name,
  (xpath('/user/last_name/text()', data))[1]::text as last_name,
  date_part('year', age(((xpath('/user/date_of_birth/text()', data))[1]::text)::date))::int as age,
  case
    when (xpath('/user/private/text()', data))[1]::text = 'true' then 'Hidden'
    when not xpath_exists('/user/email_addresses/address', data) then 'None'
    else (xpath('/user/email_addresses/address/text()', data))[1]
  end as email_address
from unnest(xpath('/data/user', (select data from users limit 1))) as data
order by first_name, last_name;


-- Link: https://www.codewars.com/kata/5db039743affec0027375de0/train/sql
 

  
