
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__items__data`
      
    
    

    OPTIONS()
    as (
      /* Table: event__data__object__items__data */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event`

SELECT
/* select which columns will be available for table 'event__data__object__items__data' */
    id,
    object,
    created,
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
    quantity,
    subscription,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`event__data__object__items__data`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` )
    );
  