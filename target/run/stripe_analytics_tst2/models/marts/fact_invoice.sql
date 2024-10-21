-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_invoice` as DBT_INTERNAL_DEST
        using (/* Fact Table: invoice */


SELECT
    ---- main table invoice
    invoice.id,
    invoice.object,
    invoice.account_country,
    invoice.amount_due,
    invoice.amount_paid,
    invoice.amount_remaining,
    invoice.amount_shipping,
    invoice.attempt_count,
    invoice.attempted,
    invoice.auto_advance,
    invoice.automatic_tax__enabled,
    invoice.billing_reason,
    invoice.charge,
    invoice.collection_method,
    invoice.created,
    invoice.currency,
    invoice.customer,
    invoice.customer_email,
    invoice.customer_name,
    invoice.customer_tax_exempt,
    invoice.discount__id,
    invoice.discount__object,
    invoice.discount__coupon__id,
    invoice.discount__coupon__object,
    invoice.discount__coupon__created,
    invoice.discount__coupon__duration,
    invoice.discount__coupon__livemode,
    invoice.discount__coupon__percent_off,
    invoice.discount__coupon__times_redeemed,
    invoice.discount__coupon__valid,
    invoice.discount__customer,
    invoice.discount__start,
    invoice.discount__subscription,
    invoice.effective_at,
    invoice.ending_balance,
    invoice.hosted_invoice_url,
    invoice.invoice_pdf,
    invoice.issuer__type,
    invoice.lines__object,
    invoice.lines__has_more,
    invoice.lines__total_count,
    invoice.lines__url,
    invoice.livemode,
    invoice.number,
    invoice.paid,
    invoice.paid_out_of_band,
    invoice.payment_intent,
    invoice.period_end,
    invoice.period_start,
    invoice.post_payment_credit_notes_amount,
    invoice.pre_payment_credit_notes_amount,
    invoice.starting_balance,
    invoice.status,
    invoice.status_transitions__finalized_at,
    invoice.status_transitions__paid_at,
    invoice.subscription,
    invoice.subtotal,
    invoice.subtotal_excluding_tax,
    invoice.total,
    invoice.total_excluding_tax,
    invoice.webhooks_delivered_at,

    

FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` as invoice
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `account_country`, `amount_due`, `amount_paid`, `amount_remaining`, `amount_shipping`, `attempt_count`, `attempted`, `auto_advance`, `automatic_tax__enabled`, `billing_reason`, `charge`, `collection_method`, `created`, `currency`, `customer`, `customer_email`, `customer_name`, `customer_tax_exempt`, `discount__id`, `discount__object`, `discount__coupon__id`, `discount__coupon__object`, `discount__coupon__created`, `discount__coupon__duration`, `discount__coupon__livemode`, `discount__coupon__percent_off`, `discount__coupon__times_redeemed`, `discount__coupon__valid`, `discount__customer`, `discount__start`, `discount__subscription`, `effective_at`, `ending_balance`, `hosted_invoice_url`, `invoice_pdf`, `issuer__type`, `lines__object`, `lines__has_more`, `lines__total_count`, `lines__url`, `livemode`, `number`, `paid`, `paid_out_of_band`, `payment_intent`, `period_end`, `period_start`, `post_payment_credit_notes_amount`, `pre_payment_credit_notes_amount`, `starting_balance`, `status`, `status_transitions__finalized_at`, `status_transitions__paid_at`, `subscription`, `subtotal`, `subtotal_excluding_tax`, `total`, `total_excluding_tax`, `webhooks_delivered_at`)
    values
        (`id`, `object`, `account_country`, `amount_due`, `amount_paid`, `amount_remaining`, `amount_shipping`, `attempt_count`, `attempted`, `auto_advance`, `automatic_tax__enabled`, `billing_reason`, `charge`, `collection_method`, `created`, `currency`, `customer`, `customer_email`, `customer_name`, `customer_tax_exempt`, `discount__id`, `discount__object`, `discount__coupon__id`, `discount__coupon__object`, `discount__coupon__created`, `discount__coupon__duration`, `discount__coupon__livemode`, `discount__coupon__percent_off`, `discount__coupon__times_redeemed`, `discount__coupon__valid`, `discount__customer`, `discount__start`, `discount__subscription`, `effective_at`, `ending_balance`, `hosted_invoice_url`, `invoice_pdf`, `issuer__type`, `lines__object`, `lines__has_more`, `lines__total_count`, `lines__url`, `livemode`, `number`, `paid`, `paid_out_of_band`, `payment_intent`, `period_end`, `period_start`, `post_payment_credit_notes_amount`, `pre_payment_credit_notes_amount`, `starting_balance`, `status`, `status_transitions__finalized_at`, `status_transitions__paid_at`, `subscription`, `subtotal`, `subtotal_excluding_tax`, `total`, `total_excluding_tax`, `webhooks_delivered_at`)


    