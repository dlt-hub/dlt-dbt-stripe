
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__pending`
      
    
    

    OPTIONS()
    as (
      /* Table: event__data__object__pending */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event`

SELECT
/* select which columns will be available for table 'event__data__object__pending' */
    amount,
    currency,
    source_types__card,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`event__data__object__pending`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` )
    );
  