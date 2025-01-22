/* Table: event__data__object__lines__data__discount_amounts */
/* Parent: event__data__object__lines__data */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.amount,
    t.discount,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_event__data__object__lines__data__discount_amounts') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_event__data__object__lines__data') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)