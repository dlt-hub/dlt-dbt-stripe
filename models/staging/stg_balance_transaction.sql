/* Table: balance_transaction */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'balance_transaction' */
    id,
    object,
    amount,
    available_on,
    created,
    currency,
    description,
    fee,
    net,
    reporting_category,
    status,
    type,
    _dlt_load_id,
    _dlt_id,
    exchange_rate,
    source,
FROM {{ source('raw_data', 'balance_transaction') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )