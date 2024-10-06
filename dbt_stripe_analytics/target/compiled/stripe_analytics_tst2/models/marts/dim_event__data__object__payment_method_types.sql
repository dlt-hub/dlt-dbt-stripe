/* Table: event__data__object__payment_method_types */
/* Parent: event */

SELECT
    t.value,
    t._dlt_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__payment_method_types` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)