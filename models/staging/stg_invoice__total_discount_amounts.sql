/* Table: invoice__total_discount_amounts */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_invoice') }}

SELECT
/* select which columns will be available for table 'invoice__total_discount_amounts' */
    amount,
    discount,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'invoice__total_discount_amounts') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_invoice') }} )
