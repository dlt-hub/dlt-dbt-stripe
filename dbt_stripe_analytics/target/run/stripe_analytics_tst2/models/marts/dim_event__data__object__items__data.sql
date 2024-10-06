-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__items__data` as DBT_INTERNAL_DEST
        using (/* Table: event__data__object__items__data */
/* Parent: event */

SELECT
    t.id,
    t.object,
    t.created,
    t.plan__id,
    t.plan__object,
    t.plan__active,
    t.plan__amount,
    t.plan__amount_decimal,
    t.plan__billing_scheme,
    t.plan__created,
    t.plan__currency,
    t.plan__interval,
    t.plan__interval_count,
    t.plan__livemode,
    t.plan__product,
    t.plan__usage_type,
    t.price__id,
    t.price__object,
    t.price__active,
    t.price__billing_scheme,
    t.price__created,
    t.price__currency,
    t.price__livemode,
    t.price__product,
    t.price__recurring__interval,
    t.price__recurring__interval_count,
    t.price__recurring__usage_type,
    t.price__tax_behavior,
    t.price__type,
    t.price__unit_amount,
    t.price__unit_amount_decimal,
    t.quantity,
    t.subscription,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__items__data` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `object`, `created`, `plan__id`, `plan__object`, `plan__active`, `plan__amount`, `plan__amount_decimal`, `plan__billing_scheme`, `plan__created`, `plan__currency`, `plan__interval`, `plan__interval_count`, `plan__livemode`, `plan__product`, `plan__usage_type`, `price__id`, `price__object`, `price__active`, `price__billing_scheme`, `price__created`, `price__currency`, `price__livemode`, `price__product`, `price__recurring__interval`, `price__recurring__interval_count`, `price__recurring__usage_type`, `price__tax_behavior`, `price__type`, `price__unit_amount`, `price__unit_amount_decimal`, `quantity`, `subscription`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`id`, `object`, `created`, `plan__id`, `plan__object`, `plan__active`, `plan__amount`, `plan__amount_decimal`, `plan__billing_scheme`, `plan__created`, `plan__currency`, `plan__interval`, `plan__interval_count`, `plan__livemode`, `plan__product`, `plan__usage_type`, `price__id`, `price__object`, `price__active`, `price__billing_scheme`, `price__created`, `price__currency`, `price__livemode`, `price__product`, `price__recurring__interval`, `price__recurring__interval_count`, `price__recurring__usage_type`, `price__tax_behavior`, `price__type`, `price__unit_amount`, `price__unit_amount_decimal`, `quantity`, `subscription`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    