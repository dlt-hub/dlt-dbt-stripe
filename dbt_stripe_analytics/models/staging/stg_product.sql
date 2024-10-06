/* Table: product */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'product' */
    id,
    object,
    active,
    created,
    description,
    livemode,
    name,
    type,
    updated,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'product') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )