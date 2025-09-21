{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

SELECT *
FROM source_data
WHERE id IS not null
