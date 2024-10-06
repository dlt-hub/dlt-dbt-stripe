
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription__discounts`
      
    
    

    OPTIONS()
    as (
      /* Table: subscription__discounts */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription`

SELECT
/* select which columns will be available for table 'subscription__discounts' */
    value,
    _dlt_id,
    _dlt_parent_id,
    _dlt_list_idx,
FROM `dlt-dev-external`.`stripe_tst_2`.`subscription__discounts`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription` )
    );
  