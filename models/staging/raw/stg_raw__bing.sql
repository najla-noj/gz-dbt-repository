with 

source as (

    select * from {{ source('raw', 'bing') }}

),

renamed as (

    select
    date_date ,
    paid_source ,
    campaign_key,
    impression,
    click,
    cast(ads_cost AS FLOAT64) AS ads_cost ,
    camPGN_name aS campaing_name 

    from source

)

select * from renamed
