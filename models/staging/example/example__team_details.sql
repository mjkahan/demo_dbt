with teams as (

    select * from {{ ref('example__teams') }}

),

team_locations as (

    select * from {{ ref('team_locations') }}
),

final as (

    select
        teams.team,
        trim(team_locations.city) as city,
        trim(team_locations.state) as state,
        teams.team = '{{ var("current_champion") }}' as is_champion

    from teams

    left join team_locations
        on team_locations.name = teams.team

)

select * from final
