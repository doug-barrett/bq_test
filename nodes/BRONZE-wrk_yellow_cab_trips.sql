@id("0FC43CE6-BA76-4CC6-85B6-9342BDB76790")
@nodeType("468")
WITH x AS (
SELECT
     "t"."vendor_id" AS "vendor_id",
     "v"."vendor_name" AS "vendor_name",
     "t"."payment_type_id" AS "payment_type_id",
     "p"."payment_type"."PAYMENT_TYPE" AS "payment_type_desc",
     "t"."pickup_datetime" AS "pickup_datetime",
     "t"."dropoff_datetime" AS "dropoff_datetime",
     "t"."passenger_count" AS "passenger_count",
     "t"."trip_distance" AS "trip_distance",
     "t"."ratecode_id" AS "ratecode_id",
     "t"."store_and_fwd_flag" AS "store_and_fwd_flag",
     "t"."pu_location_id" AS "pu_location_id",
     "t"."do_location_id" AS "do_location_id",
     "t"."fare_amount" AS "fare_amount",
     "t"."extra" AS "extra",
     "t"."mta_tax" AS "mta_tax",
     "t"."tip_amount" AS "tip_amount",
     "t"."tolls_amount" AS "tolls_amount",
     "t"."improvement_surcharge" AS "improvement_surcharge",
     "t"."total_amount" AS "total_amount",
     "t"."congestion_surcharge" AS "congestion_surcharge",
     "t"."airport_fee" AS "airport_fee",
     "t"."cbd_congestion_fee" AS "cbd_congestion_fee"
FROM {{ ref('BRONZE', 'yellow_cab_trips') }} AS t
LEFT JOIN {{ ref('BRONZE', 'vendor') }} AS v
    ON "t"."vendor_id" = "v"."vendor_id"
LEFT JOIN {{ ref('BRONZE', 'payment_type') }} AS p
    ON "t"."payment_type_id" = "p"."payment_type_id"
)
SELECT * FROM x