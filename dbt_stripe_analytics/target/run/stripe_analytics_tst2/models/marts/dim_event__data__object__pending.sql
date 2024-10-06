-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__pending` as DBT_INTERNAL_DEST
        using (/* Table: event__data__object__pending */
/* Parent: event */

SELECT
    t.amount,
    t.currency,
    t.source_types__card,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__pending` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`amount`, `currency`, `source_types__card`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`amount`, `currency`, `source_types__card`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    