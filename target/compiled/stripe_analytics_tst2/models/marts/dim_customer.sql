/* Table: customer */

SELECT
    t.id,
    t.object,
    t.balance,
    t.created,
    t.currency,
    t.delinquent,
    t.email,
    t.invoice_prefix,
    t.invoice_settings__default_payment_method,
    t.livemode,
    t.name,
    t.tax_exempt,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_customer` as t