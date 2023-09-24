
  
    

    create or replace table `onlineretail-project-399501`.`retail`.`dim_product`
    
    

    OPTIONS()
    as (
      SELECT DISTINCT
    to_hex(md5(cast(coalesce(cast(StockCode as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(Description as STRING), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(UnitPrice as STRING), '_dbt_utils_surrogate_key_null_') as STRING))) as product_id,
		StockCode AS stock_code,
    Description AS description,
    UnitPrice AS price
FROM `onlineretail-project-399501`.`retail`.`raw_invoices`
WHERE StockCode IS NOT NULL
AND UnitPrice > 0
    );
  