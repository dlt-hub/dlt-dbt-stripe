/* Table: coupon */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'coupon' */
    id,
    object,
    created,
    duration,
    livemode,
    percent_off,
    times_redeemed,
    valid,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'coupon') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )