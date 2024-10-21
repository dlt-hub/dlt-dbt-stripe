/* Table: invoice__total_discount_amounts */
/* Parent: invoice */

SELECT
    t.amount,
    t.discount,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__total_discount_amounts` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` as pt
ON (t._dlt_parent_id = pt._dlt_id)