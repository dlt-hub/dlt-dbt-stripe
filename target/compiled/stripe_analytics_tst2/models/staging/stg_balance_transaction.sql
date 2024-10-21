/* Table: balance_transaction */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'balance_transaction' */
    id,
    object,
    amount,
    available_on,
    created,
    currency,
    description,
    fee,
    net,
    reporting_category,
    status,
    type,
    _dlt_load_id,
    _dlt_id,
    exchange_rate,
    source,
FROM `dlt-dev-external`.`stripe_tst_2`.`balance_transaction`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )