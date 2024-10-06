
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__lines__data`
      
    
    

    OPTIONS()
    as (
      /* Table: invoice__lines__data */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice`

SELECT
/* select which columns will be available for table 'invoice__lines__data' */
    id,
    object,
    amount,
    amount_excluding_tax,
    currency,
    description,
    discountable,
    invoice,
    livemode,
    period__end,
    period__start,
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
    price__id,
    price__object,
    price__active,
    price__billing_scheme,
    price__created,
    price__currency,
    price__livemode,
    price__product,
    price__recurring__interval,
    price__recurring__interval_count,
    price__recurring__usage_type,
    price__tax_behavior,
    price__type,
    price__unit_amount,
    price__unit_amount_decimal,
    proration,
    quantity,
    subscription,
    subscription_item,
    type,
    unit_amount_excluding_tax,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`invoice__lines__data`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` )
    );
  