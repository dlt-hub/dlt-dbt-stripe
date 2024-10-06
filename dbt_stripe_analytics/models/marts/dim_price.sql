/* Table: price */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.object,
    t.active,
    t.billing_scheme,
    t.created,
    t.currency,
    t.livemode,
    t.product,
    t.recurring__interval,
    t.recurring__interval_count,
    t.recurring__usage_type,
    t.tax_behavior,
    t.type,
    t.unit_amount,
    t.unit_amount_decimal,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_price') }} as t