select array_agg(v order by j) matrix
from
    (
    select rn,
           j,
           array_agg(v order by i) as v
    from
        (
        select rn,
                i,
                j,
               matrix[i][j] as v
        from 
            (
            select generate_subscripts(matrix, 2) j,
                   q.*
            from
                (
                  select row_number() over()     as rn,
                  generate_subscripts(matrix, 1) as i,
                  matrix
                from matrices) q
                ) r
            ) s
        group by rn, j
        ) t
group by rn
order by rn;

