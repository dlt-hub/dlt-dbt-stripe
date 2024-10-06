
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_customer`
      
    
    

    OPTIONS()
    as (
      /* Table: customer */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'customer' */
    id,
    object,
    balance,
    created,
    currency,
    delinquent,
    email,
    invoice_prefix,
    invoice_settings__default_payment_method,
    livemode,
    name,
    tax_exempt,
    _dlt_load_id,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`customer`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )
    );
  