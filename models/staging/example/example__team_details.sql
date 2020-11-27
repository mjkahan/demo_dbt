with teams as (

    select * from {{ ref('example__teams') }}

),

team_locations as (

    select * from {{ ref('team_locations') }}
),

final as (

    select
        teams.team,
        team_locations.city,
        team_locations.state

    from teams

    left join team_locations
        on team_locations.name = teams.team

)

select * from final
