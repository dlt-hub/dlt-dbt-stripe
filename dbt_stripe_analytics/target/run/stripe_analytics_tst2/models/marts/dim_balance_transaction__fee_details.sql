-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_balance_transaction__fee_details` as DBT_INTERNAL_DEST
        using (/* Table: balance_transaction__fee_details */
/* Parent: balance_transaction */

SELECT
    t.amount,
    t.currency,
    t.description,
    t.type,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_balance_transaction__fee_details` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_balance_transaction` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`amount`, `currency`, `description`, `type`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`amount`, `currency`, `description`, `type`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    