@id("afadd4f3-ba16-4a32-b6b0-8ef5ad8e6ce7")
@nodeType("461")
@testsEnabled(true)
SELECT
     "location_id" AS "location_id",
     "borough" AS "borough",
     "zone" AS "zone",
     "service_zone" AS "service_zone"
FROM {{ ref('SILVER', 'wrk_location') }} `wrk_location`