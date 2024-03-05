with

    source as (select * from {{ source("raw", "sales") }}),

    renamed as (

        select date_date, orders_id, pdt_id as products_id, revenue, quantity , 
      

        from source

    )


select *  , concat(products_id, orders_id) as praimary_kye, 
from renamed
