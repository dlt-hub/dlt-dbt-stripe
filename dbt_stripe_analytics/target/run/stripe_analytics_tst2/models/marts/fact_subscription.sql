-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_subscription` as DBT_INTERNAL_DEST
        using (/* Fact Table: subscription */


SELECT
    ---- main table subscription
    subscription.id,
    subscription.object,
    subscription.automatic_tax__enabled,
    subscription.billing_cycle_anchor,
    subscription.cancel_at_period_end,
    subscription.collection_method,
    subscription.created,
    subscription.currency,
    subscription.current_period_end,
    subscription.current_period_start,
    subscription.customer,
    subscription.discount__id,
    subscription.discount__object,
    subscription.discount__coupon__id,
    subscription.discount__coupon__object,
    subscription.discount__coupon__created,
    subscription.discount__coupon__duration,
    subscription.discount__coupon__livemode,
    subscription.discount__coupon__percent_off,
    subscription.discount__coupon__times_redeemed,
    subscription.discount__coupon__valid,
    subscription.discount__customer,
    subscription.discount__start,
    subscription.discount__subscription,
    subscription.invoice_settings__issuer__type,
    subscription.items__object,
    subscription.items__has_more,
    subscription.items__total_count,
    subscription.items__url,
    subscription.latest_invoice,
    subscription.livemode,
    subscription.payment_settings__save_default_payment_method,
    subscription.plan__id,
    subscription.plan__object,
    subscription.plan__active,
    subscription.plan__amount,
    subscription.plan__amount_decimal,
    subscription.plan__billing_scheme,
    subscription.plan__created,
    subscription.plan__currency,
    subscription.plan__interval,
    subscription.plan__interval_count,
    subscription.plan__livemode,
    subscription.plan__product,
    subscription.plan__usage_type,
    subscription.quantity,
    subscription.start_date,
    subscription.status,
    subscription.trial_settings__end_behavior__missing_payment_method,

    

FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription` as subscription
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `automatic_tax__enabled`, `billing_cycle_anchor`, `cancel_at_period_end`, `collection_method`, `created`, `currency`, `current_period_end`, `current_period_start`, `customer`, `discount__id`, `discount__object`, `discount__coupon__id`, `discount__coupon__object`, `discount__coupon__created`, `discount__coupon__duration`, `discount__coupon__livemode`, `discount__coupon__percent_off`, `discount__coupon__times_redeemed`, `discount__coupon__valid`, `discount__customer`, `discount__start`, `discount__subscription`, `invoice_settings__issuer__type`, `items__object`, `items__has_more`, `items__total_count`, `items__url`, `latest_invoice`, `livemode`, `payment_settings__save_default_payment_method`, `plan__id`, `plan__object`, `plan__active`, `plan__amount`, `plan__amount_decimal`, `plan__billing_scheme`, `plan__created`, `plan__currency`, `plan__interval`, `plan__interval_count`, `plan__livemode`, `plan__product`, `plan__usage_type`, `quantity`, `start_date`, `status`, `trial_settings__end_behavior__missing_payment_method`)
    values
        (`id`, `object`, `automatic_tax__enabled`, `billing_cycle_anchor`, `cancel_at_period_end`, `collection_method`, `created`, `currency`, `current_period_end`, `current_period_start`, `customer`, `discount__id`, `discount__object`, `discount__coupon__id`, `discount__coupon__object`, `discount__coupon__created`, `discount__coupon__duration`, `discount__coupon__livemode`, `discount__coupon__percent_off`, `discount__coupon__times_redeemed`, `discount__coupon__valid`, `discount__customer`, `discount__start`, `discount__subscription`, `invoice_settings__issuer__type`, `items__object`, `items__has_more`, `items__total_count`, `items__url`, `latest_invoice`, `livemode`, `payment_settings__save_default_payment_method`, `plan__id`, `plan__object`, `plan__active`, `plan__amount`, `plan__amount_decimal`, `plan__billing_scheme`, `plan__created`, `plan__currency`, `plan__interval`, `plan__interval_count`, `plan__livemode`, `plan__product`, `plan__usage_type`, `quantity`, `start_date`, `status`, `trial_settings__end_behavior__missing_payment_method`)


    