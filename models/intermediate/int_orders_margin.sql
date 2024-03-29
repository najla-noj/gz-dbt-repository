select
  orders_id,
  date_date,
  ROUND(SUM(revenue),2) as revenue ,
  ROUND(SUM(quantity),2) as quantity ,
  ROUND(SUM(purchase_cost),2) as purchase_cost ,
  ROUND(SUM(margin),2) as margin ,
FROM {{ref("int_sales_margin")}} 
GROUP BY orders_id,date_date
order by orders_id DESC