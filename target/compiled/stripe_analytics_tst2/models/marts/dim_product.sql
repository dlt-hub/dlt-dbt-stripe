/* Table: product */

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