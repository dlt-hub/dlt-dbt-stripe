/* Table: customer */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.object,
    t.balance,
    t.created,
    t.currency,
    t.delinquent,
    t.email,
    t.invoice_prefix,
    t.invoice_settings__default_payment_method,
    t.livemode,
    t.name,
    t.tax_exempt,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_customer') }} as t