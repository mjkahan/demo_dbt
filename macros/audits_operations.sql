{% macro insert_audits(action_name) -%}

    insert into demo_db.public.dbt_audits (audit_type)

    values ('{{ action_name }}');

    commit;

{%- endmacro %}