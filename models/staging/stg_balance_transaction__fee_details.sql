/* Table: balance_transaction__fee_details */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_balance_transaction') }}

SELECT
/* select which columns will be available for table 'balance_transaction__fee_details' */
    amount,
    currency,
    description,
    type,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'balance_transaction__fee_details') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_balance_transaction') }} )
