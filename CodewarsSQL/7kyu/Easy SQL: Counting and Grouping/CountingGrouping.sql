select race, count(*) as count from demographics
group by race
order by count desc;
