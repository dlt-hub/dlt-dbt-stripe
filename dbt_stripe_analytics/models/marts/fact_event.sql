/* Fact Table: event */
{{
    config(
        materialized='incremental'
    )
}}

SELECT
    ---- main table event
    event.id,
    event.object,
    event.api_version,
    event.created,
    event.data__object__object,
    event.data__object__account_country,
    event.data__object__amount_due,
    event.data__object__amount_paid,
    event.data__object__amount_remaining,
    event.data__object__amount_shipping,
    event.data__object__attempt_count,
    event.data__object__attempted,
    event.data__object__automatic_tax__enabled,
    event.data__object__billing_reason,
    event.data__object__collection_method,
    event.data__object__created,
    event.data__object__currency,
    event.data__object__customer,
    event.data__object__customer_email,
    event.data__object__customer_name,
    event.data__object__customer_tax_exempt,
    event.data__object__discount__id,
    event.data__object__discount__object,
    event.data__object__discount__coupon__id,
    event.data__object__discount__coupon__object,
    event.data__object__discount__coupon__created,
    event.data__object__discount__coupon__duration,
    event.data__object__discount__coupon__livemode,
    event.data__object__discount__coupon__percent_off,
    event.data__object__discount__coupon__times_redeemed,
    event.data__object__discount__coupon__valid,
    event.data__object__discount__customer,
    event.data__object__discount__start,
    event.data__object__discount__subscription,
    event.data__object__ending_balance,
    event.data__object__issuer__type,
    event.data__object__lines__object,
    event.data__object__lines__has_more,
    event.data__object__lines__total_count,
    event.data__object__lines__url,
    event.data__object__livemode,
    event.data__object__next_payment_attempt,
    event.data__object__paid,
    event.data__object__paid_out_of_band,
    event.data__object__period_end,
    event.data__object__period_start,
    event.data__object__post_payment_credit_notes_amount,
    event.data__object__pre_payment_credit_notes_amount,
    event.data__object__starting_balance,
    event.data__object__status,
    event.data__object__subscription,
    event.data__object__subtotal,
    event.data__object__subtotal_excluding_tax,
    event.data__object__total,
    event.data__object__total_excluding_tax,
    event.livemode,
    event.pending_webhooks,
    event.type,
    event.data__object__id,
    event.data__object__auto_advance,
    event.data__object__charge,
    event.data__object__effective_at,
    event.data__object__hosted_invoice_url,
    event.data__object__invoice_pdf,
    event.data__object__number,
    event.data__object__payment_intent,
    event.data__object__status_transitions__finalized_at,
    event.data__object__status_transitions__paid_at,
    event.data__object__webhooks_delivered_at,
    event.data__previous_attributes__amount_paid,
    event.data__previous_attributes__amount_remaining,
    event.data__previous_attributes__attempt_count,
    event.data__previous_attributes__attempted,
    event.data__previous_attributes__auto_advance,
    event.data__previous_attributes__automatically_finalizes_at,
    event.data__previous_attributes__next_payment_attempt,
    event.data__previous_attributes__paid,
    event.data__previous_attributes__status,
    event.data__object__amount,
    event.data__object__amount_capturable,
    event.data__object__amount_received,
    event.data__object__capture_method,
    event.data__object__client_secret,
    event.data__object__confirmation_method,
    event.data__object__description,
    event.data__object__invoice,
    event.data__object__payment_method_options__card__request_three_d_secure,
    event.data__object__latest_charge,
    event.data__object__payment_method,
    event.request__idempotency_key,
    event.data__object__amount_captured,
    event.data__object__amount_refunded,
    event.data__object__balance_transaction,
    event.data__object__calculated_statement_descriptor,
    event.data__object__captured,
    event.data__object__disputed,
    event.data__object__outcome__network_status,
    event.data__object__outcome__risk_level,
    event.data__object__outcome__risk_score,
    event.data__object__outcome__seller_message,
    event.data__object__outcome__type,
    event.data__object__payment_method_details__card__amount_authorized,
    event.data__object__payment_method_details__card__brand,
    event.data__object__payment_method_details__card__country,
    event.data__object__payment_method_details__card__exp_month,
    event.data__object__payment_method_details__card__exp_year,
    event.data__object__payment_method_details__card__extended_authorization__status,
    event.data__object__payment_method_details__card__fingerprint,
    event.data__object__payment_method_details__card__funding,
    event.data__object__payment_method_details__card__incremental_authorization__status,
    event.data__object__payment_method_details__card__last4,
    event.data__object__payment_method_details__card__multicapture__status,
    event.data__object__payment_method_details__card__network,
    event.data__object__payment_method_details__card__network_token__used,
    event.data__object__payment_method_details__card__overcapture__maximum_amount_capturable,
    event.data__object__payment_method_details__card__overcapture__status,
    event.data__object__payment_method_details__type,
    event.data__object__receipt_url,
    event.data__object__refunded,
    event.data__object__billing_cycle_anchor,
    event.data__object__cancel_at_period_end,
    event.data__object__current_period_end,
    event.data__object__current_period_start,
    event.data__object__invoice_settings__issuer__type,
    event.data__object__items__object,
    event.data__object__items__has_more,
    event.data__object__items__total_count,
    event.data__object__items__url,
    event.data__object__latest_invoice,
    event.data__object__payment_settings__save_default_payment_method,
    event.data__object__plan__id,
    event.data__object__plan__object,
    event.data__object__plan__active,
    event.data__object__plan__amount,
    event.data__object__plan__amount_decimal,
    event.data__object__plan__billing_scheme,
    event.data__object__plan__created,
    event.data__object__plan__currency,
    event.data__object__plan__interval,
    event.data__object__plan__interval_count,
    event.data__object__plan__livemode,
    event.data__object__plan__product,
    event.data__object__plan__usage_type,
    event.data__object__quantity,
    event.data__object__start_date,
    event.data__object__trial_settings__end_behavior__missing_payment_method,
    event.data__previous_attributes__current_period_end,
    event.data__previous_attributes__current_period_start,
    event.data__previous_attributes__latest_invoice,
    event.data__object__automatically_finalizes_at,

    

FROM  {{ ref('stg_event') }} as event