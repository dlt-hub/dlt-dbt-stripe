-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_customer` as DBT_INTERNAL_DEST
        using (/* Table: customer */

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
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_customer` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `balance`, `created`, `currency`, `delinquent`, `email`, `invoice_prefix`, `invoice_settings__default_payment_method`, `livemode`, `name`, `tax_exempt`, `_dlt_load_id`, `_dlt_id`)
    values
        (`id`, `object`, `balance`, `created`, `currency`, `delinquent`, `email`, `invoice_prefix`, `invoice_settings__default_payment_method`, `livemode`, `name`, `tax_exempt`, `_dlt_load_id`, `_dlt_id`)


    