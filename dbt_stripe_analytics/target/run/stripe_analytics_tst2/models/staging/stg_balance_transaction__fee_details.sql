
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_balance_transaction__fee_details`
      
    
    

    OPTIONS()
    as (
      /* Table: balance_transaction__fee_details */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_balance_transaction`

SELECT
/* select which columns will be available for table 'balance_transaction__fee_details' */
    amount,
    currency,
    description,
    type,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`balance_transaction__fee_details`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_balance_transaction` )
    );
  