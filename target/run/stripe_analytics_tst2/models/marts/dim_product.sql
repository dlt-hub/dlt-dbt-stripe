-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_product` as DBT_INTERNAL_DEST
        using (/* Table: product */

SELECT
    t.id,
    t.object,
    t.active,
    t.created,
    t.description,
    t.livemode,
    t.name,
    t.type,
    t.updated,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_product` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `active`, `created`, `description`, `livemode`, `name`, `type`, `updated`, `_dlt_load_id`, `_dlt_id`)
    values
        (`id`, `object`, `active`, `created`, `description`, `livemode`, `name`, `type`, `updated`, `_dlt_load_id`, `_dlt_id`)


    