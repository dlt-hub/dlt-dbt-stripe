
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim__dlt_loads`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_subscription`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_coupon`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_customer`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_product`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_price`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_event`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_invoice`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_balance_transaction`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_balance_transaction__fee_details`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__discounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__lines__data`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__lines__data__discount_amounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__total_discount_amounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__available`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__pending`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__payment_method_types`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__items__data`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_invoice__discounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_invoice__lines__data`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_invoice__lines__data__discount_amounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_invoice__total_discount_amounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_subscription__discounts`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_subscription__items__data`
/* we save all currently active load ids into the processed ids table */
select load_id, current_timestamp() as inserted_at FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`