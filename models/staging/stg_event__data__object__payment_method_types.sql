/* Table: event__data__object__payment_method_types */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_event') }}

SELECT
/* select which columns will be available for table 'event__data__object__payment_method_types' */
    value,
    _dlt_id,
    _dlt_parent_id,
    _dlt_list_idx,
FROM {{ source('raw_data', 'event__data__object__payment_method_types') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_event') }} )
