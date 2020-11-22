create or replace view members_approved_for_voucher as

with mafv as 
    (select s.department_id, sum(p.price) from sales s
        join products p
        on s.product_id = p.id
        group by s.department_id
        having sum(p.price) > 10000
    )    
    
    select s.member_id as id, m.name, m.email, sum(p.price) as total_spending 
    from sales s
    left join products p
    on s.product_id = p.id
    left join members m
    on s.member_id = m.id
    group by (s.member_id, m.name, m.email)
    having sum(p.price) > 1000
    group by s.member_id asc;
    
    select id, name, email, total_spending from members_approved_for_voucher;
    
