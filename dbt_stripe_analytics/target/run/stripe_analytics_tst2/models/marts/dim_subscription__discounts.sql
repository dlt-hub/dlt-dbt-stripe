-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_subscription__discounts` as DBT_INTERNAL_DEST
        using (/* Table: subscription__discounts */
/* Parent: subscription */

SELECT
    t.value,
    t._dlt_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription__discounts` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`value`, `_dlt_id`, `_dlt_parent_id`, `_dlt_list_idx`)
    values
        (`value`, `_dlt_id`, `_dlt_parent_id`, `_dlt_list_idx`)


    