with source_data as (

    select 1 as id
    union all
    select null as id

),

final as (

    select *
    from source_data
    where id is not null

)

select * from final
