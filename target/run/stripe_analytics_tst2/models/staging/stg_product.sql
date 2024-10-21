
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_product`
      
    
    

    OPTIONS()
    as (
      /* Table: product */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'product' */
    id,
    object,
    active,
    created,
    description,
    livemode,
    name,
    type,
    updated,
    _dlt_load_id,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`product`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )
    );
  