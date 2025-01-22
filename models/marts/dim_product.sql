/* Table: product */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.object,
    t.active,
    t.created,
    t.description,
    t.livemode,
    t.name,
    t.type,
    t.updated,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_product') }} as t