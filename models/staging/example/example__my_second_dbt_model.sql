
-- Use the `ref` function to select from other models

select *
from {{ ref('example__my_first_dbt_model') }}
where id = 1
