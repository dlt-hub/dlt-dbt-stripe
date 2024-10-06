
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice`
      
    
    

    OPTIONS()
    as (
      /* Table: invoice */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'invoice' */
    id,
    object,
    account_country,
    amount_due,
    amount_paid,
    amount_remaining,
    amount_shipping,
    attempt_count,
    attempted,
    auto_advance,
    automatic_tax__enabled,
    billing_reason,
    charge,
    collection_method,
    created,
    currency,
    customer,
    customer_email,
    customer_name,
    customer_tax_exempt,
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
    effective_at,
    ending_balance,
    hosted_invoice_url,
    invoice_pdf,
    issuer__type,
    lines__object,
    lines__has_more,
    lines__total_count,
    lines__url,
    livemode,
    number,
    paid,
    paid_out_of_band,
    payment_intent,
    period_end,
    period_start,
    post_payment_credit_notes_amount,
    pre_payment_credit_notes_amount,
    starting_balance,
    status,
    status_transitions__finalized_at,
    status_transitions__paid_at,
    subscription,
    subtotal,
    subtotal_excluding_tax,
    total,
    total_excluding_tax,
    webhooks_delivered_at,
    _dlt_load_id,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`invoice`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids` )
    );
  