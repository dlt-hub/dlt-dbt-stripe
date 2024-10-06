/* Table: subscription__items__data */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_subscription') }}

SELECT
/* select which columns will be available for table 'subscription__items__data' */
    id,
    object,
    created,
    plan__id,
    plan__object,
    plan__active,
    plan__amount,
    plan__amount_decimal,
    plan__billing_scheme,
    plan__created,
    plan__currency,
    plan__interval,
    plan__interval_count,
    plan__livemode,
    plan__product,
    plan__usage_type,
    price__id,
    price__object,
    price__active,
    price__billing_scheme,
    price__created,
    price__currency,
    price__livemode,
    price__product,
    price__recurring__interval,
    price__recurring__interval_count,
    price__recurring__usage_type,
    price__tax_behavior,
    price__type,
    price__unit_amount,
    price__unit_amount_decimal,
    quantity,
    subscription,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'subscription__items__data') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_subscription') }} )
