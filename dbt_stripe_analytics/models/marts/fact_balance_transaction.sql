/* Fact Table: balance_transaction */
{{
    config(
        materialized='incremental'
    )
}}

SELECT
    ---- main table balance_transaction
    balance_transaction.id,
    balance_transaction.object,
    balance_transaction.amount,
    balance_transaction.available_on,
    balance_transaction.created,
    balance_transaction.currency,
    balance_transaction.description,
    balance_transaction.fee,
    balance_transaction.net,
    balance_transaction.reporting_category,
    balance_transaction.status,
    balance_transaction.type,
    balance_transaction.exchange_rate,
    balance_transaction.source,

    

FROM  {{ ref('stg_balance_transaction') }} as balance_transaction