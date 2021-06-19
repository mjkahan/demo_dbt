with teams as (

    select
        'Lakers' as team

    union all

    select
        'Clippers' as team

    union all

    select
        '76ers' as team

    union all

    select
        'Heat' as team

    union all

    select
        'Bulls' as team

)

select * from teams
