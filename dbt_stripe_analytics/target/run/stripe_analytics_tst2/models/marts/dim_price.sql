-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_price` as DBT_INTERNAL_DEST
        using (/* Table: price */

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
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_price` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `active`, `billing_scheme`, `created`, `currency`, `livemode`, `product`, `recurring__interval`, `recurring__interval_count`, `recurring__usage_type`, `tax_behavior`, `type`, `unit_amount`, `unit_amount_decimal`, `_dlt_load_id`, `_dlt_id`)
    values
        (`id`, `object`, `active`, `billing_scheme`, `created`, `currency`, `livemode`, `product`, `recurring__interval`, `recurring__interval_count`, `recurring__usage_type`, `tax_behavior`, `type`, `unit_amount`, `unit_amount_decimal`, `_dlt_load_id`, `_dlt_id`)


    