WITH BIKE as (

select
distinct
START_STATIO_ID AS station_id,
start_station_name AS station_name,
start_lat AS station_lat,
start_lng AS station_lng

from {{ ref('stg_bike') }}
where RIDE_ID != 'ride_id'

)

select * from BIKE