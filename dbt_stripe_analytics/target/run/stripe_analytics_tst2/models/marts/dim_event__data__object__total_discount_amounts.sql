-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__total_discount_amounts` as DBT_INTERNAL_DEST
        using (/* Table: event__data__object__total_discount_amounts */
/* Parent: event */

SELECT
    t.amount,
    t.discount,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__total_discount_amounts` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`amount`, `discount`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`amount`, `discount`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    