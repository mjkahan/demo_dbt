with source_store_sales as (
    select * from {{ source('sample_data', 'store_sales') }} limit 10
),

final as (
    select * from source_store_sales
)

select * from final