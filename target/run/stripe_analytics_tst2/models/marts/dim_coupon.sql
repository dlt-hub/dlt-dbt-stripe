-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_coupon` as DBT_INTERNAL_DEST
        using (/* Table: coupon */

SELECT
    t.id,
    t.object,
    t.created,
    t.duration,
    t.livemode,
    t.percent_off,
    t.times_redeemed,
    t.valid,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_coupon` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `created`, `duration`, `livemode`, `percent_off`, `times_redeemed`, `valid`, `_dlt_load_id`, `_dlt_id`)
    values
        (`id`, `object`, `created`, `duration`, `livemode`, `percent_off`, `times_redeemed`, `valid`, `_dlt_load_id`, `_dlt_id`)


    