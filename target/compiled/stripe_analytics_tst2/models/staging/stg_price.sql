/* Table: price */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'price' */
    id,
    object,
    active,
    billing_scheme,
    created,
    currency,
    livemode,
    product,
    recurring__interval,
    recurring__interval_count,
    recurring__usage_type,
    tax_behavior,
    type,
    unit_amount,
    unit_amount_decimal,
    _dlt_load_id,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`price`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )