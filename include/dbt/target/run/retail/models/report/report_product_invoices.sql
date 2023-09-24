
  
    

    create or replace table `onlineretail-project-399501`.`retail`.`report_product_invoices`
    
    

    OPTIONS()
    as (
      SELECT
  p.product_id,
  p.stock_code,
  p.description,
  SUM(fi.quantity) AS total_quantity_sold
FROM `onlineretail-project-399501`.`retail`.`fct_invoices` fi
JOIN `onlineretail-project-399501`.`retail`.`dim_product` p ON fi.product_id = p.product_id
GROUP BY p.product_id, p.stock_code, p.description
ORDER BY total_quantity_sold DESC
LIMIT 10
    );
  