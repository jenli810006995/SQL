-- if not use distinct() there would be duplicated ids, use left join() instead of join()

select distinct(t0.id) as id,
       t1.revenue as Jan_Revenue,
       t2.revenue as Feb_Revenue,
       t3.revenue as Mar_Revenue,
       t4.revenue as Apr_Revenue,
       t5.revenue as May_Revenue,
       t6.revenue as Jun_Revenue,
       t7.revenue as Jul_Revenue,
       t8.revenue as Aug_Revenue,
       t9.revenue as Sep_Revenue,
       t10.revenue as Oct_Revenue,
       t11.revenue as Nov_Revenue,
       t12.revenue as Dec_Revenue
from Department t0 
left join Department t1 on t0.id = t1.id and t1.month = 'Jan'
left join Department t2 on t0.id = t2.id and t2.month = 'Feb'
left join Department t3 on t0.id = t3.id and t3.month = 'Mar'
left join Department t4 on t0.id = t4.id and t4.month = 'Apr'
left join Department t5 on t0.id = t5.id and t5.month = 'May'
left join Department t6 on t0.id = t6.id and t6.month = 'Jun'
left join Department t7 on t0.id = t7.id and t7.month = 'Jul'
left join Department t8 on t0.id = t8.id and t8.month = 'Aug'
left join Department t9 on t0.id = t9.id and t9.month = 'Sep'
left join Department t10 on t0.id = t10.id and t10.month = 'Oct'
left join Department t11 on t0.id = t11.id and t11.month = 'Nov'
left join Department t12 on t0.id = t12.id and t12.month = 'Dec'
;

