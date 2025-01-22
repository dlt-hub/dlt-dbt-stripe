/* Table: coupon */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.object,
    t.created,
    t.duration,
    t.livemode,
    t.percent_off,
    t.times_redeemed,
    t.valid,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_coupon') }} as t