
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription`
      
    
    

    OPTIONS()
    as (
      /* Table: subscription */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'subscription' */
    id,
    object,
    automatic_tax__enabled,
    billing_cycle_anchor,
    cancel_at_period_end,
    collection_method,
    created,
    currency,
    current_period_end,
    current_period_start,
    customer,
    discount__id,
    discount__object,
    discount__coupon__id,
    discount__coupon__object,
    discount__coupon__created,
    discount__coupon__duration,
    discount__coupon__livemode,
    discount__coupon__percent_off,
    discount__coupon__times_redeemed,
    discount__coupon__valid,
    discount__customer,
    discount__start,
    discount__subscription,
    invoice_settings__issuer__type,
    items__object,
    items__has_more,
    items__total_count,
    items__url,
    latest_invoice,
    livemode,
    payment_settings__save_default_payment_method,
    plan__id,
    plan__object,
    plan__active,
    plan__amount,
    plan__amount_decimal,
    plan__billing_scheme,
    plan__created,
    plan__currency,
    plan__interval,
    plan__interval_count,
    plan__livemode,
    plan__product,
    plan__usage_type,
    quantity,
    start_date,
    status,
    trial_settings__end_behavior__missing_payment_method,
    _dlt_load_id,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`subscription`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )
    );
  